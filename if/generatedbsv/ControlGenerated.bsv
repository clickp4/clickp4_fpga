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
    IFBRANCH0,
    NOACTION1
} ModuleIfIfEqualActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(2, 36, 1, module_if_if_equal)
typedef Table#(2, MetadataRequest, ModuleIfIfEqualParam, ConnectalTypes::ModuleIfIfEqualReqT, ConnectalTypes::ModuleIfIfEqualRspT) ModuleIfIfEqualTable;
typedef MatchTable#(1, 2, 256, SizeOf#(ConnectalTypes::ModuleIfIfEqualReqT), SizeOf#(ConnectalTypes::ModuleIfIfEqualRspT)) ModuleIfIfEqualMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleIfIfEqualMatchTable, mkMatchTable_ModuleIfIfEqual)
instance Table_request #(ConnectalTypes::ModuleIfIfEqualReqT);
    function ConnectalTypes::ModuleIfIfEqualReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleIfIfEqualReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleIfIfEqualReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleIfIfEqualRspT, ModuleIfIfEqualParam, 2);
    function Action table_execute(ConnectalTypes::ModuleIfIfEqualRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleIfIfEqualParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    IFBRANCH1,
    NOACTION2
} ModuleIfIfLargeActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(3, 36, 1, module_if_if_large)
typedef Table#(2, MetadataRequest, ModuleIfIfLargeParam, ConnectalTypes::ModuleIfIfLargeReqT, ConnectalTypes::ModuleIfIfLargeRspT) ModuleIfIfLargeTable;
typedef MatchTable#(1, 3, 256, SizeOf#(ConnectalTypes::ModuleIfIfLargeReqT), SizeOf#(ConnectalTypes::ModuleIfIfLargeRspT)) ModuleIfIfLargeMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleIfIfLargeMatchTable, mkMatchTable_ModuleIfIfLarge)
instance Table_request #(ConnectalTypes::ModuleIfIfLargeReqT);
    function ConnectalTypes::ModuleIfIfLargeReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleIfIfLargeReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleIfIfLargeReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleIfIfLargeRspT, ModuleIfIfLargeParam, 2);
    function Action table_execute(ConnectalTypes::ModuleIfIfLargeRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleIfIfLargeParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    IFBRANCH2,
    NOACTION3
} ModuleIfIfSmallActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(4, 36, 1, module_if_if_small)
typedef Table#(2, MetadataRequest, ModuleIfIfSmallParam, ConnectalTypes::ModuleIfIfSmallReqT, ConnectalTypes::ModuleIfIfSmallRspT) ModuleIfIfSmallTable;
typedef MatchTable#(1, 4, 256, SizeOf#(ConnectalTypes::ModuleIfIfSmallReqT), SizeOf#(ConnectalTypes::ModuleIfIfSmallRspT)) ModuleIfIfSmallMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleIfIfSmallMatchTable, mkMatchTable_ModuleIfIfSmall)
instance Table_request #(ConnectalTypes::ModuleIfIfSmallReqT);
    function ConnectalTypes::ModuleIfIfSmallReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleIfIfSmallReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleIfIfSmallReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleIfIfSmallRspT, ModuleIfIfSmallParam, 2);
    function Action table_execute(ConnectalTypes::ModuleIfIfSmallRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleIfIfSmallParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef Engine#(1, MetadataRequest, ModuleIfIfSmallParam) NoActionAction;
// INST (8) meta.click_metadata.click_state; = state;
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
typedef Engine#(1, MetadataRequest, ModuleIfIfSmallParam) IfBranchAction;
instance Action_execute #(ModuleIfIfSmallParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleIfIfSmallParam param);
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
    method Action module_if_if_equal_add_entry(ConnectalTypes::ModuleIfIfEqualReqT key, ConnectalTypes::ModuleIfIfEqualRspT value);
    method Action module_if_if_large_add_entry(ConnectalTypes::ModuleIfIfLargeReqT key, ConnectalTypes::ModuleIfIfLargeRspT value);
    method Action module_if_if_small_add_entry(ConnectalTypes::ModuleIfIfSmallReqT key, ConnectalTypes::ModuleIfIfSmallRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_if_if_equal_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_if_if_equal_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_if_if_large_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_if_if_large_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_if_if_small_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_if_if_small_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_3_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_5_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::IfBranchAction ifbranch_action <- mkEngine(toList(vec(step_1)));
    ModuleIfIfEqualMatchTable module_if_if_equal_table <- mkMatchTable_ModuleIfIfEqual("module_if_if_equal");
    Control::ModuleIfIfEqualTable module_if_if_equal <- mkTable(table_request, table_execute, module_if_if_equal_table);
    messageM(printType(typeOf(module_if_if_equal_table)));
    messageM(printType(typeOf(module_if_if_equal)));
    ModuleIfIfLargeMatchTable module_if_if_large_table <- mkMatchTable_ModuleIfIfLarge("module_if_if_large");
    Control::ModuleIfIfLargeTable module_if_if_large <- mkTable(table_request, table_execute, module_if_if_large_table);
    messageM(printType(typeOf(module_if_if_large_table)));
    messageM(printType(typeOf(module_if_if_large)));
    ModuleIfIfSmallMatchTable module_if_if_small_table <- mkMatchTable_ModuleIfIfSmall("module_if_if_small");
    Control::ModuleIfIfSmallTable module_if_if_small <- mkTable(table_request, table_execute, module_if_if_small_table);
    messageM(printType(typeOf(module_if_if_small_table)));
    messageM(printType(typeOf(module_if_if_small)));
    mkConnection(toClient(module_if_if_equal_req_ff, module_if_if_equal_rsp_ff), module_if_if_equal.prev_control_state);
    mkConnection(module_if_if_equal.next_control_state[0], ifbranch_action.prev_control_state);
    mkConnection(module_if_if_equal.next_control_state[1], noAction_action.prev_control_state);
    mkConnection(toClient(module_if_if_large_req_ff, module_if_if_large_rsp_ff), module_if_if_large.prev_control_state);
    mkConnection(module_if_if_large.next_control_state[0], ifbranch_action.prev_control_state);
    mkConnection(module_if_if_large.next_control_state[1], noAction_action.prev_control_state);
    mkConnection(toClient(module_if_if_small_req_ff, module_if_if_small_rsp_ff), module_if_if_small.prev_control_state);
    mkConnection(module_if_if_small.next_control_state[0], ifbranch_action.prev_control_state);
    mkConnection(module_if_if_small.next_control_state[1], noAction_action.prev_control_state);
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
        if (h.hdr.click_bitmap20) begin
            node_3_req_ff.enq(_req);
            dbprint(3, $format("node_2 true", fshow(meta)));
        end
        else begin
            _req_ff.enq(_req);
            dbprint(3, $format("node_2 false", fshow(meta)));
        end
    endrule
    rule rl_node_3 if (node_3_req_ff.notEmpty);
        node_3_req_ff.deq;
        let _req = node_3_req_ff.first;
        let meta = _req.meta;
        if (h.hdr.lefth.hdr.right) begin
            module_if.if_small_req_ff.enq(_req);
            dbprint(3, $format("node_3 true", fshow(meta)));
        end
        else begin
            node_5_req_ff.enq(_req);
            dbprint(3, $format("node_3 false", fshow(meta)));
        end
    endrule
    rule rl_module_if_if_small if (module_if_if_small_rsp_ff.notEmpty);
        module_if_if_small_rsp_ff.deq;
        let _rsp = module_if_if_small_rsp_ff.first;
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
    rule rl_node_5 if (node_5_req_ff.notEmpty);
        node_5_req_ff.deq;
        let _req = node_5_req_ff.first;
        let meta = _req.meta;
        if (h.hdr.left > h.hdr.right) begin
            module_if.if_large_req_ff.enq(_req);
            dbprint(3, $format("node_5 true", fshow(meta)));
        end
        else begin
            module_if.if_equal_req_ff.enq(_req);
            dbprint(3, $format("node_5 false", fshow(meta)));
        end
    endrule
    rule rl_module_if_if_large if (module_if_if_large_rsp_ff.notEmpty);
        module_if_if_large_rsp_ff.deq;
        let _rsp = module_if_if_large_rsp_ff.first;
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
    rule rl_module_if_if_equal if (module_if_if_equal_rsp_ff.notEmpty);
        module_if_if_equal_rsp_ff.deq;
        let _rsp = module_if_if_equal_rsp_ff.first;
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
    method module_if_if_equal_add_entry = module_if_if_equal.add_entry;
    method module_if_if_large_add_entry = module_if_if_large.add_entry;
    method module_if_if_small_add_entry = module_if_if_small.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        module_if_if_equal.set_verbosity(verbosity);
        module_if_if_large.set_verbosity(verbosity);
        module_if_if_small.set_verbosity(verbosity);
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
