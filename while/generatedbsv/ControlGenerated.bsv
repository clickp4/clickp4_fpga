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
    LOOP0,
    LOOPEND0,
    NOACTION2
} ModuleWhileWhileEqualActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(21, 36, 2, module_while_while_equal)
typedef Table#(3, MetadataRequest, ModuleWhileWhileEqualParam, ConnectalTypes::ModuleWhileWhileEqualReqT, ConnectalTypes::ModuleWhileWhileEqualRspT) ModuleWhileWhileEqualTable;
typedef MatchTable#(1, 21, 256, SizeOf#(ConnectalTypes::ModuleWhileWhileEqualReqT), SizeOf#(ConnectalTypes::ModuleWhileWhileEqualRspT)) ModuleWhileWhileEqualMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleWhileWhileEqualMatchTable, mkMatchTable_ModuleWhileWhileEqual)
instance Table_request #(ConnectalTypes::ModuleWhileWhileEqualReqT);
    function ConnectalTypes::ModuleWhileWhileEqualReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleWhileWhileEqualReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleWhileWhileEqualReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleWhileWhileEqualRspT, ModuleWhileWhileEqualParam, 3);
    function Action table_execute(ConnectalTypes::ModuleWhileWhileEqualRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, ModuleWhileWhileEqualParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    SETTHRESHOLD0,
    NOACTION3
} ModuleWhileWhileInitActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(22, 72, 1, module_while_while_init)
typedef Table#(2, MetadataRequest, ModuleWhileWhileInitParam, ConnectalTypes::ModuleWhileWhileInitReqT, ConnectalTypes::ModuleWhileWhileInitRspT) ModuleWhileWhileInitTable;
typedef MatchTable#(1, 22, 256, SizeOf#(ConnectalTypes::ModuleWhileWhileInitReqT), SizeOf#(ConnectalTypes::ModuleWhileWhileInitRspT)) ModuleWhileWhileInitMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleWhileWhileInitMatchTable, mkMatchTable_ModuleWhileWhileInit)
instance Table_request #(ConnectalTypes::ModuleWhileWhileInitReqT);
    function ConnectalTypes::ModuleWhileWhileInitReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleWhileWhileInitReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleWhileWhileInitReqT {src_addr: src_addr,dst_addr: dst_addr, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleWhileWhileInitRspT, ModuleWhileWhileInitParam, 2);
    function Action table_execute(ConnectalTypes::ModuleWhileWhileInitRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleWhileWhileInitParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    LOOP1,
    LOOPEND1,
    NOACTION4
} ModuleWhileWhileLargeActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(23, 36, 2, module_while_while_large)
typedef Table#(3, MetadataRequest, ModuleWhileWhileLargeParam, ConnectalTypes::ModuleWhileWhileLargeReqT, ConnectalTypes::ModuleWhileWhileLargeRspT) ModuleWhileWhileLargeTable;
typedef MatchTable#(1, 23, 256, SizeOf#(ConnectalTypes::ModuleWhileWhileLargeReqT), SizeOf#(ConnectalTypes::ModuleWhileWhileLargeRspT)) ModuleWhileWhileLargeMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleWhileWhileLargeMatchTable, mkMatchTable_ModuleWhileWhileLarge)
instance Table_request #(ConnectalTypes::ModuleWhileWhileLargeReqT);
    function ConnectalTypes::ModuleWhileWhileLargeReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleWhileWhileLargeReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleWhileWhileLargeReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleWhileWhileLargeRspT, ModuleWhileWhileLargeParam, 3);
    function Action table_execute(ConnectalTypes::ModuleWhileWhileLargeRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, ModuleWhileWhileLargeParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    LOOP2,
    LOOPEND2,
    NOACTION5
} ModuleWhileWhileSmallActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(24, 36, 2, module_while_while_small)
typedef Table#(3, MetadataRequest, ModuleWhileWhileSmallParam, ConnectalTypes::ModuleWhileWhileSmallReqT, ConnectalTypes::ModuleWhileWhileSmallRspT) ModuleWhileWhileSmallTable;
typedef MatchTable#(1, 24, 256, SizeOf#(ConnectalTypes::ModuleWhileWhileSmallReqT), SizeOf#(ConnectalTypes::ModuleWhileWhileSmallRspT)) ModuleWhileWhileSmallMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleWhileWhileSmallMatchTable, mkMatchTable_ModuleWhileWhileSmall)
instance Table_request #(ConnectalTypes::ModuleWhileWhileSmallReqT);
    function ConnectalTypes::ModuleWhileWhileSmallReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleWhileWhileSmallReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleWhileWhileSmallReqT {click_id: click_id, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleWhileWhileSmallRspT, ModuleWhileWhileSmallParam, 3);
    function Action table_execute(ConnectalTypes::ModuleWhileWhileSmallRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, ModuleWhileWhileSmallParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    ACTSETCHAIN0,
    ACTSETBITMAP0,
    NOACTION1
} PipelineStartTblPipelineStartActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(17, 72, 2, pipeline_start_tbl_pipeline_start)
typedef Table#(3, MetadataRequest, PipelineStartTblPipelineStartParam, ConnectalTypes::PipelineStartTblPipelineStartReqT, ConnectalTypes::PipelineStartTblPipelineStartRspT) PipelineStartTblPipelineStartTable;
typedef MatchTable#(1, 17, 256, SizeOf#(ConnectalTypes::PipelineStartTblPipelineStartReqT), SizeOf#(ConnectalTypes::PipelineStartTblPipelineStartRspT)) PipelineStartTblPipelineStartMatchTable;
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
typedef Engine#(1, MetadataRequest, ModuleWhileWhileSmallParam) NoActionAction;
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
// INST (8) meta.click_metadata.click_state; = 0
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
// INST (8) meta.click_metadata.click_input; = 0
// INST extern resubmit
typedef Engine#(1, MetadataRequest, ModuleWhileWhileSmallParam) LoopAction;
instance Action_execute #(ModuleWhileWhileSmallParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleWhileWhileSmallParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST (8) meta.click_metadata.click_state; = state;
// INST (64) meta.click_metadata.click_bitmap; = bitmap;
typedef Engine#(1, MetadataRequest, ModuleWhileWhileSmallParam) LoopEndAction;
instance Action_execute #(ModuleWhileWhileSmallParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleWhileWhileSmallParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST (32) meta.while_metadata.threshold; = threshold;
typedef Engine#(1, MetadataRequest, ModuleWhileWhileInitParam) SetThresholdAction;
instance Action_execute #(ModuleWhileWhileInitParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleWhileWhileInitParam param);
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
    method Action module_while_while_equal_add_entry(ConnectalTypes::ModuleWhileWhileEqualReqT key, ConnectalTypes::ModuleWhileWhileEqualRspT value);
    method Action module_while_while_init_add_entry(ConnectalTypes::ModuleWhileWhileInitReqT key, ConnectalTypes::ModuleWhileWhileInitRspT value);
    method Action module_while_while_large_add_entry(ConnectalTypes::ModuleWhileWhileLargeReqT key, ConnectalTypes::ModuleWhileWhileLargeRspT value);
    method Action module_while_while_small_add_entry(ConnectalTypes::ModuleWhileWhileSmallReqT key, ConnectalTypes::ModuleWhileWhileSmallRspT value);
    method Action pipeline_start_tbl_pipeline_start_add_entry(ConnectalTypes::PipelineStartTblPipelineStartReqT key, ConnectalTypes::PipelineStartTblPipelineStartRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_equal_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_equal_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_init_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_init_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_large_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_large_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_small_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_while_while_small_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_start_tbl_pipeline_start_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_start_tbl_pipeline_start_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_4_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_5_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_7_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_9_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::ActSetBitmapAction actsetbitmap_action <- mkEngine(toList(vec(step_1)));
    Control::ActSetChainAction actsetchain_action <- mkEngine(toList(vec(step_1)));
    Control::LoopAction loop_action <- mkEngine(toList(vec(step_1)));
    Control::LoopEndAction loopend_action <- mkEngine(toList(vec(step_1)));
    Control::SetThresholdAction setthreshold_action <- mkEngine(toList(vec(step_1)));
    ModuleWhileWhileEqualMatchTable module_while_while_equal_table <- mkMatchTable_ModuleWhileWhileEqual("module_while_while_equal");
    Control::ModuleWhileWhileEqualTable module_while_while_equal <- mkTable(table_request, table_execute, module_while_while_equal_table);
    messageM(printType(typeOf(module_while_while_equal_table)));
    messageM(printType(typeOf(module_while_while_equal)));
    ModuleWhileWhileInitMatchTable module_while_while_init_table <- mkMatchTable_ModuleWhileWhileInit("module_while_while_init");
    Control::ModuleWhileWhileInitTable module_while_while_init <- mkTable(table_request, table_execute, module_while_while_init_table);
    messageM(printType(typeOf(module_while_while_init_table)));
    messageM(printType(typeOf(module_while_while_init)));
    ModuleWhileWhileLargeMatchTable module_while_while_large_table <- mkMatchTable_ModuleWhileWhileLarge("module_while_while_large");
    Control::ModuleWhileWhileLargeTable module_while_while_large <- mkTable(table_request, table_execute, module_while_while_large_table);
    messageM(printType(typeOf(module_while_while_large_table)));
    messageM(printType(typeOf(module_while_while_large)));
    ModuleWhileWhileSmallMatchTable module_while_while_small_table <- mkMatchTable_ModuleWhileWhileSmall("module_while_while_small");
    Control::ModuleWhileWhileSmallTable module_while_while_small <- mkTable(table_request, table_execute, module_while_while_small_table);
    messageM(printType(typeOf(module_while_while_small_table)));
    messageM(printType(typeOf(module_while_while_small)));
    PipelineStartTblPipelineStartMatchTable pipeline_start_tbl_pipeline_start_table <- mkMatchTable_PipelineStartTblPipelineStart("pipeline_start_tbl_pipeline_start");
    Control::PipelineStartTblPipelineStartTable pipeline_start_tbl_pipeline_start <- mkTable(table_request, table_execute, pipeline_start_tbl_pipeline_start_table);
    messageM(printType(typeOf(pipeline_start_tbl_pipeline_start_table)));
    messageM(printType(typeOf(pipeline_start_tbl_pipeline_start)));
    mkConnection(toClient(module_while_while_equal_req_ff, module_while_while_equal_rsp_ff), module_while_while_equal.prev_control_state);
    mkConnection(module_while_while_equal.next_control_state[0], loop_action.prev_control_state);
    mkConnection(module_while_while_equal.next_control_state[1], loopend_action.prev_control_state);
    mkConnection(module_while_while_equal.next_control_state[2], noAction_action.prev_control_state);
    mkConnection(toClient(module_while_while_init_req_ff, module_while_while_init_rsp_ff), module_while_while_init.prev_control_state);
    mkConnection(module_while_while_init.next_control_state[0], setthreshold_action.prev_control_state);
    mkConnection(module_while_while_init.next_control_state[1], noAction_action.prev_control_state);
    mkConnection(toClient(module_while_while_large_req_ff, module_while_while_large_rsp_ff), module_while_while_large.prev_control_state);
    mkConnection(module_while_while_large.next_control_state[0], loop_action.prev_control_state);
    mkConnection(module_while_while_large.next_control_state[1], loopend_action.prev_control_state);
    mkConnection(module_while_while_large.next_control_state[2], noAction_action.prev_control_state);
    mkConnection(toClient(module_while_while_small_req_ff, module_while_while_small_rsp_ff), module_while_while_small.prev_control_state);
    mkConnection(module_while_while_small.next_control_state[0], loop_action.prev_control_state);
    mkConnection(module_while_while_small.next_control_state[1], loopend_action.prev_control_state);
    mkConnection(module_while_while_small.next_control_state[2], noAction_action.prev_control_state);
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
            node_4_req_ff.enq(_req);
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
                node_4_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    rule rl_node_4 if (node_4_req_ff.notEmpty);
        node_4_req_ff.deq;
        let _req = node_4_req_ff.first;
        let meta = _req.meta;
        if (h.hdr.click_bitmap20) begin
            node_5_req_ff.enq(_req);
            dbprint(3, $format("node_4 true", fshow(meta)));
        end
        else begin
            _req_ff.enq(_req);
            dbprint(3, $format("node_4 false", fshow(meta)));
        end
    endrule
    rule rl_node_5 if (node_5_req_ff.notEmpty);
        node_5_req_ff.deq;
        let _req = node_5_req_ff.first;
        let meta = _req.meta;
        if (h.hdr.threshold0) begin
            module_while.while_init_req_ff.enq(_req);
            dbprint(3, $format("node_5 true", fshow(meta)));
        end
        else begin
            node_7_req_ff.enq(_req);
            dbprint(3, $format("node_5 false", fshow(meta)));
        end
    endrule
    rule rl_module_while_while_init if (module_while_while_init_rsp_ff.notEmpty);
        module_while_while_init_rsp_ff.deq;
        let _rsp = module_while_while_init_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                node_7_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    rule rl_node_7 if (node_7_req_ff.notEmpty);
        node_7_req_ff.deq;
        let _req = node_7_req_ff.first;
        let meta = _req.meta;
        if (h.hdr.valueh.hdr.threshold) begin
            module_while.while_small_req_ff.enq(_req);
            dbprint(3, $format("node_7 true", fshow(meta)));
        end
        else begin
            node_9_req_ff.enq(_req);
            dbprint(3, $format("node_7 false", fshow(meta)));
        end
    endrule
    rule rl_module_while_while_small if (module_while_while_small_rsp_ff.notEmpty);
        module_while_while_small_rsp_ff.deq;
        let _rsp = module_while_while_small_rsp_ff.first;
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
    rule rl_node_9 if (node_9_req_ff.notEmpty);
        node_9_req_ff.deq;
        let _req = node_9_req_ff.first;
        let meta = _req.meta;
        if (h.hdr.value > h.hdr.threshold) begin
            module_while.while_large_req_ff.enq(_req);
            dbprint(3, $format("node_9 true", fshow(meta)));
        end
        else begin
            module_while.while_equal_req_ff.enq(_req);
            dbprint(3, $format("node_9 false", fshow(meta)));
        end
    endrule
    rule rl_module_while_while_large if (module_while_while_large_rsp_ff.notEmpty);
        module_while_while_large_rsp_ff.deq;
        let _rsp = module_while_while_large_rsp_ff.first;
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
    rule rl_module_while_while_equal if (module_while_while_equal_rsp_ff.notEmpty);
        module_while_while_equal_rsp_ff.deq;
        let _rsp = module_while_while_equal_rsp_ff.first;
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
    method module_while_while_equal_add_entry = module_while_while_equal.add_entry;
    method module_while_while_init_add_entry = module_while_while_init.add_entry;
    method module_while_while_large_add_entry = module_while_while_large.add_entry;
    method module_while_while_small_add_entry = module_while_while_small.add_entry;
    method pipeline_start_tbl_pipeline_start_add_entry = pipeline_start_tbl_pipeline_start.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        module_while_while_equal.set_verbosity(verbosity);
        module_while_while_init.set_verbosity(verbosity);
        module_while_while_large.set_verbosity(verbosity);
        module_while_while_small.set_verbosity(verbosity);
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
