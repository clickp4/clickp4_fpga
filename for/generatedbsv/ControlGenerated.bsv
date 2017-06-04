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
    LOOPEND0,
    NOACTION1
} ModuleForForEndActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(10, 36, 1, module_for_for_end)
typedef Table#(2, MetadataRequest, ModuleForForEndParam, ConnectalTypes::ModuleForForEndReqT, ConnectalTypes::ModuleForForEndRspT) ModuleForForEndTable;
typedef MatchTable#(1, 10, 256, SizeOf#(ConnectalTypes::ModuleForForEndReqT), SizeOf#(ConnectalTypes::ModuleForForEndRspT)) ModuleForForEndMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleForForEndMatchTable, mkMatchTable_ModuleForForEnd)
instance Table_request #(ConnectalTypes::ModuleForForEndReqT);
    function ConnectalTypes::ModuleForForEndReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleForForEndReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let click_id = fromMaybe(?, data.meta.meta.click_id);
            v = ConnectalTypes::ModuleForForEndReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleForForEndRspT, ModuleForForEndParam, 2);
    function Action table_execute(ConnectalTypes::ModuleForForEndRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleForForEndParam))) fifos);
        action
        case (unpack(resp._action)) matches
            LOOPEND0: begin
                ModuleForForEndParam req = LoopEndReqT {_state:resp._state, _bitmap:resp._bitmap};
                fifos[0].enq(tuple2(metadata,req));
            end
            NOACTION1: begin
                fifos[1].enq(tuple2(metadata,?));
            end
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    FORINIT0,
    NOACTION2
} ModuleForForInitActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(11, 36, 1, module_for_for_init)
typedef Table#(2, MetadataRequest, ModuleForForInitParam, ConnectalTypes::ModuleForForInitReqT, ConnectalTypes::ModuleForForInitRspT) ModuleForForInitTable;
typedef MatchTable#(1, 11, 256, SizeOf#(ConnectalTypes::ModuleForForInitReqT), SizeOf#(ConnectalTypes::ModuleForForInitRspT)) ModuleForForInitMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleForForInitMatchTable, mkMatchTable_ModuleForForInit)
instance Table_request #(ConnectalTypes::ModuleForForInitReqT);
    function ConnectalTypes::ModuleForForInitReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleForForInitReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let click_id = fromMaybe(?, data.meta.meta.click_id);
            v = ConnectalTypes::ModuleForForInitReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleForForInitRspT, ModuleForForInitParam, 2);
    function Action table_execute(ConnectalTypes::ModuleForForInitRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleForForInitParam))) fifos);
        action
        case (unpack(resp._action)) matches
            FORINIT0: begin
                ModuleForForInitParam req = ForInitReqT{_threshold: resp._threshold};
                fifos[0].enq(tuple2(metadata,req));
            end
            NOACTION2: begin
                fifos[1].enq(tuple2(metadata,?));
            end
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    FORLOOP0,
    NOACTION3
} ModuleForForLoopActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(12, 36, 1, module_for_for_loop)
typedef Table#(2, MetadataRequest, ModuleForForLoopParam, ConnectalTypes::ModuleForForLoopReqT, ConnectalTypes::ModuleForForLoopRspT) ModuleForForLoopTable;
typedef MatchTable#(1, 12, 256, SizeOf#(ConnectalTypes::ModuleForForLoopReqT), SizeOf#(ConnectalTypes::ModuleForForLoopRspT)) ModuleForForLoopMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleForForLoopMatchTable, mkMatchTable_ModuleForForLoop)
instance Table_request #(ConnectalTypes::ModuleForForLoopReqT);
    function ConnectalTypes::ModuleForForLoopReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleForForLoopReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let click_id = fromMaybe(?, data.meta.meta.click_id);
            v = ConnectalTypes::ModuleForForLoopReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleForForLoopRspT, ModuleForForLoopParam, 2);
    function Action table_execute(ConnectalTypes::ModuleForForLoopRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleForForLoopParam))) fifos);
        action
        case (unpack(resp._action)) matches
            FORLOOP0: begin
                ModuleForForLoopParam req = ForLoopReqT{_bitmap : resp._bitmap};
                fifos[0].enq(tuple2(metadata,req));
            end
            NOACTION3: begin
                fifos[1].enq(tuple2(metadata,?));
            end
        endcase
        endaction
    endfunction
endinstance
typedef Engine#(1, MetadataRequest, ModuleForForLoopParam) NoActionAction;
// INST (32) meta.for_metadata.threshold; = threshold;
// INST extern resubmit
typedef Engine#(1, MetadataRequest, ModuleForForInitParam) ForInitAction;
instance Action_execute #(ModuleForForInitParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleForForInitParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST (32) meta.for_metadata.i; = meta.for_metadata.i + 1;
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
typedef Engine#(1, MetadataRequest, ModuleForForLoopParam) ForLoopAction;
instance Action_execute #(ModuleForForLoopParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleForForLoopParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST (8) meta.click_metadata.click_state; = state;
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
typedef Engine#(1, MetadataRequest, ModuleForForEndParam) LoopEndAction;
instance Action_execute #(ModuleForForEndParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleForForEndParam param);
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
    method Action module_for_for_end_add_entry(ConnectalTypes::ModuleForForEndReqT key, ConnectalTypes::ModuleForForEndRspT value);
    method Action module_for_for_init_add_entry(ConnectalTypes::ModuleForForInitReqT key, ConnectalTypes::ModuleForForInitRspT value);
    method Action module_for_for_loop_add_entry(ConnectalTypes::ModuleForForLoopReqT key, ConnectalTypes::ModuleForForLoopRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_for_for_end_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_for_for_end_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_for_for_init_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_for_for_init_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_for_for_loop_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_for_for_loop_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_3_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_5_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::ForInitAction forinit_action <- mkEngine(toList(vec(step_1)));
    Control::ForLoopAction forloop_action <- mkEngine(toList(vec(step_1)));
    Control::LoopEndAction loopend_action <- mkEngine(toList(vec(step_1)));
    ModuleForForEndMatchTable module_for_for_end_table <- mkMatchTable_ModuleForForEnd("module_for_for_end");
    Control::ModuleForForEndTable module_for_for_end <- mkTable(table_request, table_execute, module_for_for_end_table);
    messageM(printType(typeOf(module_for_for_end_table)));
    messageM(printType(typeOf(module_for_for_end)));
    ModuleForForInitMatchTable module_for_for_init_table <- mkMatchTable_ModuleForForInit("module_for_for_init");
    Control::ModuleForForInitTable module_for_for_init <- mkTable(table_request, table_execute, module_for_for_init_table);
    messageM(printType(typeOf(module_for_for_init_table)));
    messageM(printType(typeOf(module_for_for_init)));
    ModuleForForLoopMatchTable module_for_for_loop_table <- mkMatchTable_ModuleForForLoop("module_for_for_loop");
    Control::ModuleForForLoopTable module_for_for_loop <- mkTable(table_request, table_execute, module_for_for_loop_table);
    messageM(printType(typeOf(module_for_for_loop_table)));
    messageM(printType(typeOf(module_for_for_loop)));
    mkConnection(toClient(module_for_for_end_req_ff, module_for_for_end_rsp_ff), module_for_for_end.prev_control_state);
    mkConnection(module_for_for_end.next_control_state[0], loopend_action.prev_control_state);
    //mkConnection(module_for_for_end.next_control_state[1], noAction_action.prev_control_state);
    mkConnection(toClient(module_for_for_init_req_ff, module_for_for_init_rsp_ff), module_for_for_init.prev_control_state);
    mkConnection(module_for_for_init.next_control_state[0], forinit_action.prev_control_state);
    //mkConnection(module_for_for_init.next_control_state[1], noAction_action.prev_control_state);
    mkConnection(toClient(module_for_for_loop_req_ff, module_for_for_loop_rsp_ff), module_for_for_loop.prev_control_state);
    mkConnection(module_for_for_loop.next_control_state[0], forloop_action.prev_control_state);
    //mkConnection(module_for_for_loop.next_control_state[1], noAction_action.prev_control_state);
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
        // if (h.hdr.click_bitmap20) begin
            node_3_req_ff.enq(_req);
            dbprint(3, $format("node_2 true", fshow(meta)));
        // end
        // else begin
        //     _req_ff.enq(_req);
        //     dbprint(3, $format("node_2 false", fshow(meta)));
        // end
    endrule
    rule rl_node_3 if (node_3_req_ff.notEmpty);
        node_3_req_ff.deq;
        let _req = node_3_req_ff.first;
        let meta = _req.meta;
        // if (h.hdr.threshold0) begin
            module_for_for_init_req_ff.enq(_req);
            dbprint(3, $format("node_3 true", fshow(meta)));
        // end
        // else begin
        //     node_5_req_ff.enq(_req);
        //     dbprint(3, $format("node_3 false", fshow(meta)));
        // end
    endrule
    rule rl_module_for_for_init if (module_for_for_init_rsp_ff.notEmpty);
        module_for_for_init_rsp_ff.deq;
        let _rsp = module_for_for_init_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                node_5_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    rule rl_node_5 if (node_5_req_ff.notEmpty);
        node_5_req_ff.deq;
        let _req = node_5_req_ff.first;
        let meta = _req.meta;
        // if (h.hdr.ih.hdr.threshold) begin
            module_for_for_loop_req_ff.enq(_req);
            dbprint(3, $format("node_5 true", fshow(meta)));
        //end
        // else begin
            module_for_for_end_req_ff.enq(_req);
            dbprint(3, $format("node_5 false", fshow(meta)));
        //end
    endrule
    rule rl_module_for_for_loop if (module_for_for_loop_rsp_ff.notEmpty);
        module_for_for_loop_rsp_ff.deq;
        let _rsp = module_for_for_loop_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                exit_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    rule rl_module_for_for_end if (module_for_for_end_rsp_ff.notEmpty);
        module_for_for_end_rsp_ff.deq;
        let _rsp = module_for_for_end_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                exit_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    interface prev = toPipeIn(entry_req_ff);
    interface next = toPipeOut(exit_req_ff);
    method module_for_for_end_add_entry = module_for_for_end.add_entry;
    method module_for_for_init_add_entry = module_for_for_init.add_entry;
    method module_for_for_loop_add_entry = module_for_for_loop.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        module_for_for_end.set_verbosity(verbosity);
        module_for_for_init.set_verbosity(verbosity);
        module_for_for_loop.set_verbosity(verbosity);
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
