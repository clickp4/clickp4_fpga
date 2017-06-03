import Library::*;
import StructDefines::*;
import UnionDefines::*;
import ConnectalTypes::*;
import Table::*;
import Engine::*;
import Pipe::*;
import Lists::*;
`include "TieOff.defines"
`include "Debug.defines"
`include "SynthBuilder.defines"
`include "MatchTable.defines"
typedef enum {
    REWIND0,
    NOACTION1
} PipelineRewindRewindTableActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(26, 45, 1, pipeline_rewind_rewind_table)
typedef Table#(2, MetadataRequest, PipelineRewindRewindTableParam, ConnectalTypes::PipelineRewindRewindTableReqT, ConnectalTypes::PipelineRewindRewindTableRspT) PipelineRewindRewindTableTable;
typedef MatchTable#(1, 26, 256, SizeOf#(ConnectalTypes::PipelineRewindRewindTableReqT), SizeOf#(ConnectalTypes::PipelineRewindRewindTableRspT)) PipelineRewindRewindTableMatchTable;
`SynthBuildModule1(mkMatchTable, String, PipelineRewindRewindTableMatchTable, mkMatchTable_PipelineRewindRewindTable)
instance Table_request #(ConnectalTypes::PipelineRewindRewindTableReqT);
    function ConnectalTypes::PipelineRewindRewindTableReqT table_request(MetadataRequest data);
        ConnectalTypes::PipelineRewindRewindTableReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let click_id = fromMaybe(?, data.meta.meta.click_id);
            let click_state = fromMaybe(?, data.meta.meta.click_state);
            v = ConnectalTypes::PipelineRewindRewindTableReqT {click_id: click_id,click_state: click_state, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::PipelineRewindRewindTableRspT, PipelineRewindRewindTableParam, 2);
    function Action table_execute(ConnectalTypes::PipelineRewindRewindTableRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, PipelineRewindRewindTableParam))) fifos);
        action
        case (unpack(resp._action)) matches
        REWIND0: begin
            PipelineRewindRewindTableParam req = tagged RewindReqT {_state: resp._state, _bitmap: resp._bitmap};
            fifos[0].enq(tuple2(metadata,req));
        end
        NOACTION1: begin
            fifos[1].enq(tuple2(metadata,?));
        end
        endcase
        endaction
    endfunction
endinstance
typedef Engine#(1, MetadataRequest, PipelineRewindRewindTableParam) NoActionAction;
// INST (8) meta.click_metadata.click_state; = state;
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
// INST (8) meta.click_metadata.click_input; = 0
// INST extern resubmit
typedef Engine#(1, MetadataRequest, PipelineRewindRewindTableParam) RewindAction;
instance Action_execute #(PipelineRewindRewindTableParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, PipelineRewindRewindTableParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// =============== control ingress ==============
interface Ingress;
    interface PipeIn#(MetadataRequest) prev;
    interface PipeOut#(MetadataRequest) next;
    method Action pipeline_rewind_rewind_table_add_entry(ConnectalTypes::PipelineRewindRewindTableReqT key, ConnectalTypes::PipelineRewindRewindTableRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_rewind_rewind_table_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_rewind_rewind_table_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_3_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::RewindAction rewind_action <- mkEngine(toList(vec(step_1)));
    PipelineRewindRewindTableMatchTable pipeline_rewind_rewind_table_table <- mkMatchTable_PipelineRewindRewindTable("pipeline_rewind_rewind_table");
    Control::PipelineRewindRewindTableTable pipeline_rewind_rewind_table <- mkTable(table_request, table_execute, pipeline_rewind_rewind_table_table);
    messageM(printType(typeOf(pipeline_rewind_rewind_table_table)));
    messageM(printType(typeOf(pipeline_rewind_rewind_table)));
    mkConnection(toClient(pipeline_rewind_rewind_table_req_ff, pipeline_rewind_rewind_table_rsp_ff), pipeline_rewind_rewind_table.prev_control_state);
    mkConnection(pipeline_rewind_rewind_table.next_control_state[0], rewind_action.prev_control_state);
    mkConnection(pipeline_rewind_rewind_table.next_control_state[1], noAction_action.prev_control_state);
    rule rl_entry if (entry_req_ff.notEmpty);
        entry_req_ff.deq;
        let _req = entry_req_ff.first;
        let meta = _req.meta;
        let pkt = _req.pkt;
        MetadataRequest req = MetadataRequest {pkt: pkt, meta: meta};
        node_2_req_ff.enq(req);
        dbprint(3, $format("node_2", fshow(meta)));
    endrule
    rule rl_node_2 if (node_2_req_ff.notEmpty);
        node_2_req_ff.deq;
        let _req = node_2_req_ff.first;
        let meta = _req.meta;
        let h = _req.meta.meta.click_metadata;
        if (h.click_bitmap) begin
            node_3_req_ff.enq(_req);
            dbprint(3, $format("node_2 true", fshow(meta)));
        end
        else begin
            exit_req_ff.enq(_req);
            dbprint(3, $format("node_2 false", fshow(meta)));
        end
    endrule
    rule rl_node_3 if (node_3_req_ff.notEmpty);
        node_3_req_ff.deq;
        let _req = node_3_req_ff.first;
        let meta = _req.meta;
        if (h.click_id) begin
            pipeline_rewind.rewind_table_req_ff.enq(_req);
            dbprint(3, $format("node_3 true", fshow(meta)));
        end
        else begin
            exit_req_ff.enq(_req);
            dbprint(3, $format("node_3 false", fshow(meta)));
        end
    endrule
    rule rl_pipeline_rewind_rewind_table if (pipeline_rewind_rewind_table_rsp_ff.notEmpty);
        pipeline_rewind_rewind_table_rsp_ff.deq;
        let _rsp = pipeline_rewind_rewind_table_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                pipeline_rewind_rewind_table_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    interface prev = toPipeIn(entry_req_ff);
    interface next = toPipeOut(exit_req_ff);
    method pipeline_rewind_rewind_table_add_entry = pipeline_rewind_rewind_table.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        pipeline_rewind_rewind_table.set_verbosity(verbosity);
    endmethod
endmodule
// =============== control egress ==============
interface Egress;
    interface PipeIn#(MetadataRequest) prev;
    interface PipeOut#(MetadataRequest) next;
    method Action set_verbosity(int verbosity);
endinterface
module mkEgress (Egress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    rule rl_entry if (entry_req_ff.notEmpty);
        entry_req_ff.deq;
        let _req = entry_req_ff.first;
        let meta = _req.meta;
        let pkt = _req.pkt;
        MetadataRequest req = MetadataRequest {pkt: pkt, meta: meta};
        exit_req_ff.enq(req);
        dbprint(3, $format("exit", fshow(meta)));
    endrule
    interface prev = toPipeIn(entry_req_ff);
    interface next = toPipeOut(exit_req_ff);
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
    endmethod
endmodule
