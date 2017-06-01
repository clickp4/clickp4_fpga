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
    ACTSETCHAIN0,
    ACTSETBITMAP0,
    NOACTION1
} PipelineStartTblPipelineStartActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(9, 72, 2, pipeline_start_tbl_pipeline_start)
typedef Table#(3, MetadataRequest, PipelineStartTblPipelineStartParam, ConnectalTypes::PipelineStartTblPipelineStartReqT, ConnectalTypes::PipelineStartTblPipelineStartRspT) PipelineStartTblPipelineStartTable;
typedef MatchTable#(1, 9, 256, SizeOf#(ConnectalTypes::PipelineStartTblPipelineStartReqT), SizeOf#(ConnectalTypes::PipelineStartTblPipelineStartRspT)) PipelineStartTblPipelineStartMatchTable;
`SynthBuildModule1(mkMatchTable, String, PipelineStartTblPipelineStartMatchTable, mkMatchTable_PipelineStartTblPipelineStart)
instance Table_request #(ConnectalTypes::PipelineStartTblPipelineStartReqT);
    function ConnectalTypes::PipelineStartTblPipelineStartReqT table_request(MetadataRequest data);
        ConnectalTypes::PipelineStartTblPipelineStartReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::PipelineStartTblPipelineStartReqT {src_addr: src_addr,dst_addr: dst_addr,proto: proto};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::PipelineStartTblPipelineStartRspT, PipelineStartTblPipelineStartParam, 3);
    function Action table_execute(ConnectalTypes::PipelineStartTblPipelineStartRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, PipelineStartTblPipelineStartParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef Engine#(1, MetadataRequest, PipelineStartTblPipelineStartParam) NoActionAction;
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
typedef Engine#(1, MetadataRequest, PipelineStartTblPipelineStartParam) ActSetBitmapAction;
instance Action_execute #(PipelineStartTblPipelineStartParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, PipelineStartTblPipelineStartParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST (32) meta.click_metadata.click_id; = chain_id;
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
typedef Engine#(1, MetadataRequest, PipelineStartTblPipelineStartParam) ActSetChainAction;
instance Action_execute #(PipelineStartTblPipelineStartParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, PipelineStartTblPipelineStartParam param);
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
    method Action pipeline_start_tbl_pipeline_start_add_entry(ConnectalTypes::PipelineStartTblPipelineStartReqT key, ConnectalTypes::PipelineStartTblPipelineStartRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_start_tbl_pipeline_start_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_start_tbl_pipeline_start_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::ActSetBitmapAction actsetbitmap_action <- mkEngine(toList(vec(step_1)));
    Control::ActSetChainAction actsetchain_action <- mkEngine(toList(vec(step_1)));
    PipelineStartTblPipelineStartMatchTable pipeline_start_tbl_pipeline_start_table <- mkMatchTable_PipelineStartTblPipelineStart("pipeline_start_tbl_pipeline_start");
    Control::PipelineStartTblPipelineStartTable pipeline_start_tbl_pipeline_start <- mkTable(table_request, table_execute, pipeline_start_tbl_pipeline_start_table);
    messageM(printType(typeOf(pipeline_start_tbl_pipeline_start_table)));
    messageM(printType(typeOf(pipeline_start_tbl_pipeline_start)));
    mkConnection(toClient(pipeline_start_tbl_pipeline_start_req_ff, pipeline_start_tbl_pipeline_start_rsp_ff), pipeline_start_tbl_pipeline_start.prev_control_state);
    mkConnection(pipeline_start_tbl_pipeline_start.next_control_state[0], actsetchain_action.prev_control_state);
    mkConnection(pipeline_start_tbl_pipeline_start.next_control_state[1], actsetbitmap_action.prev_control_state);
    mkConnection(pipeline_start_tbl_pipeline_start.next_control_state[2], noAction_action.prev_control_state);
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
        if (h.hdr.click_bitmap10) begin
            pipeline_start.tbl_pipeline_start_req_ff.enq(_req);
            dbprint(3, $format("node_2 true", fshow(meta)));
        end
        else begin
            _req_ff.enq(_req);
            dbprint(3, $format("node_2 false", fshow(meta)));
        end
    endrule
    rule rl_pipeline_start_tbl_pipeline_start if (pipeline_start_tbl_pipeline_start_rsp_ff.notEmpty);
        pipeline_start_tbl_pipeline_start_rsp_ff.deq;
        let _rsp = pipeline_start_tbl_pipeline_start_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                _req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    interface prev = toPipeIn(entry_req_ff);
    interface next = toPipeOut(exit_req_ff);
    method pipeline_start_tbl_pipeline_start_add_entry = pipeline_start_tbl_pipeline_start.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        pipeline_start_tbl_pipeline_start.set_verbosity(verbosity);
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
