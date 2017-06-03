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
    SETDMAC0,
    NOACTION1
} ModuleL3SwitchForwardTableActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(19, 36, 1, module_l3_switch_forward_table)
typedef Table#(2, MetadataRequest, ModuleL3SwitchForwardTableParam, ConnectalTypes::ModuleL3SwitchForwardTableReqT, ConnectalTypes::ModuleL3SwitchForwardTableRspT) ModuleL3SwitchForwardTableTable;
typedef MatchTable#(1, 19, 256, SizeOf#(ConnectalTypes::ModuleL3SwitchForwardTableReqT), SizeOf#(ConnectalTypes::ModuleL3SwitchForwardTableRspT)) ModuleL3SwitchForwardTableMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleL3SwitchForwardTableMatchTable, mkMatchTable_ModuleL3SwitchForwardTable)
instance Table_request #(ConnectalTypes::ModuleL3SwitchForwardTableReqT);
    function ConnectalTypes::ModuleL3SwitchForwardTableReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleL3SwitchForwardTableReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleL3SwitchForwardTableReqT {nhop_ipv4: nhop_ipv4, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleL3SwitchForwardTableRspT, ModuleL3SwitchForwardTableParam, 2);
    function Action table_execute(ConnectalTypes::ModuleL3SwitchForwardTableRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleL3SwitchForwardTableParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    SETNHOP0,
    BLOCK0,
    NOACTION2
} ModuleL3SwitchIpv4NhopActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(20, 36, 2, module_l3_switch_ipv4_nhop)
typedef Table#(3, MetadataRequest, ModuleL3SwitchIpv4NhopParam, ConnectalTypes::ModuleL3SwitchIpv4NhopReqT, ConnectalTypes::ModuleL3SwitchIpv4NhopRspT) ModuleL3SwitchIpv4NhopTable;
typedef MatchTable#(1, 20, 256, SizeOf#(ConnectalTypes::ModuleL3SwitchIpv4NhopReqT), SizeOf#(ConnectalTypes::ModuleL3SwitchIpv4NhopRspT)) ModuleL3SwitchIpv4NhopMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleL3SwitchIpv4NhopMatchTable, mkMatchTable_ModuleL3SwitchIpv4Nhop)
instance Table_request #(ConnectalTypes::ModuleL3SwitchIpv4NhopReqT);
    function ConnectalTypes::ModuleL3SwitchIpv4NhopReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleL3SwitchIpv4NhopReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleL3SwitchIpv4NhopReqT {dst_addr: dst_addr, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleL3SwitchIpv4NhopRspT, ModuleL3SwitchIpv4NhopParam, 3);
    function Action table_execute(ConnectalTypes::ModuleL3SwitchIpv4NhopRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, ModuleL3SwitchIpv4NhopParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    SETSMAC0,
    BLOCK1,
    NOACTION3
} ModuleL3SwitchSendFrameActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(21, 9, 2, module_l3_switch_send_frame)
typedef Table#(3, MetadataRequest, ModuleL3SwitchSendFrameParam, ConnectalTypes::ModuleL3SwitchSendFrameReqT, ConnectalTypes::ModuleL3SwitchSendFrameRspT) ModuleL3SwitchSendFrameTable;
typedef MatchTable#(1, 21, 256, SizeOf#(ConnectalTypes::ModuleL3SwitchSendFrameReqT), SizeOf#(ConnectalTypes::ModuleL3SwitchSendFrameRspT)) ModuleL3SwitchSendFrameMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleL3SwitchSendFrameMatchTable, mkMatchTable_ModuleL3SwitchSendFrame)
instance Table_request #(ConnectalTypes::ModuleL3SwitchSendFrameReqT);
    function ConnectalTypes::ModuleL3SwitchSendFrameReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleL3SwitchSendFrameReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleL3SwitchSendFrameReqT {egress_spec: egress_spec};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleL3SwitchSendFrameRspT, ModuleL3SwitchSendFrameParam, 3);
    function Action table_execute(ConnectalTypes::ModuleL3SwitchSendFrameRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, ModuleL3SwitchSendFrameParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef Engine#(1, MetadataRequest, ModuleL3SwitchSendFrameParam) NoActionAction;
// INST (1) meta.security_metadata.drop_flag; = 1
// mark_to_drop 
typedef Engine#(1, MetadataRequest, ModuleL3SwitchSendFrameParam) BlockAction;
// INST (48) hdr.ethernet.dst_addr; = dmac;
// INST (9) standard_metadata.egress_spec; = port;
typedef Engine#(1, MetadataRequest, ModuleL3SwitchForwardTableParam) SetDmacAction;
instance Action_execute #(ModuleL3SwitchForwardTableParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleL3SwitchForwardTableParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST (32) meta.l3_switch_metadata.nhop_ipv4; = nhop_ipv4;
// INST (8) hdr.ipv4.ttl; = hdr.ipv4.ttl + 255;
typedef Engine#(1, MetadataRequest, ModuleL3SwitchIpv4NhopParam) SetNhopAction;
instance Action_execute #(ModuleL3SwitchIpv4NhopParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleL3SwitchIpv4NhopParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST (48) hdr.ethernet.src_addr; = smac;
typedef Engine#(1, MetadataRequest, ModuleL3SwitchSendFrameParam) SetSmacAction;
instance Action_execute #(ModuleL3SwitchSendFrameParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleL3SwitchSendFrameParam param);
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
    method Action module_l3_switch_forward_table_add_entry(ConnectalTypes::ModuleL3SwitchForwardTableReqT key, ConnectalTypes::ModuleL3SwitchForwardTableRspT value);
    method Action module_l3_switch_ipv4_nhop_add_entry(ConnectalTypes::ModuleL3SwitchIpv4NhopReqT key, ConnectalTypes::ModuleL3SwitchIpv4NhopRspT value);
    method Action module_l3_switch_send_frame_add_entry(ConnectalTypes::ModuleL3SwitchSendFrameReqT key, ConnectalTypes::ModuleL3SwitchSendFrameRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l3_switch_forward_table_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l3_switch_forward_table_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l3_switch_ipv4_nhop_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l3_switch_ipv4_nhop_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l3_switch_send_frame_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l3_switch_send_frame_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_3_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_4_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::BlockAction block_action <- mkEngine(toList(vec(step_1)));
    Control::SetDmacAction setdmac_action <- mkEngine(toList(vec(step_1)));
    Control::SetNhopAction setnhop_action <- mkEngine(toList(vec(step_1)));
    Control::SetSmacAction setsmac_action <- mkEngine(toList(vec(step_1)));
    ModuleL3SwitchForwardTableMatchTable module_l3_switch_forward_table_table <- mkMatchTable_ModuleL3SwitchForwardTable("module_l3_switch_forward_table");
    Control::ModuleL3SwitchForwardTableTable module_l3_switch_forward_table <- mkTable(table_request, table_execute, module_l3_switch_forward_table_table);
    messageM(printType(typeOf(module_l3_switch_forward_table_table)));
    messageM(printType(typeOf(module_l3_switch_forward_table)));
    ModuleL3SwitchIpv4NhopMatchTable module_l3_switch_ipv4_nhop_table <- mkMatchTable_ModuleL3SwitchIpv4Nhop("module_l3_switch_ipv4_nhop");
    Control::ModuleL3SwitchIpv4NhopTable module_l3_switch_ipv4_nhop <- mkTable(table_request, table_execute, module_l3_switch_ipv4_nhop_table);
    messageM(printType(typeOf(module_l3_switch_ipv4_nhop_table)));
    messageM(printType(typeOf(module_l3_switch_ipv4_nhop)));
    ModuleL3SwitchSendFrameMatchTable module_l3_switch_send_frame_table <- mkMatchTable_ModuleL3SwitchSendFrame("module_l3_switch_send_frame");
    Control::ModuleL3SwitchSendFrameTable module_l3_switch_send_frame <- mkTable(table_request, table_execute, module_l3_switch_send_frame_table);
    messageM(printType(typeOf(module_l3_switch_send_frame_table)));
    messageM(printType(typeOf(module_l3_switch_send_frame)));
    mkConnection(toClient(module_l3_switch_forward_table_req_ff, module_l3_switch_forward_table_rsp_ff), module_l3_switch_forward_table.prev_control_state);
    mkConnection(module_l3_switch_forward_table.next_control_state[0], setdmac_action.prev_control_state);
    mkConnection(module_l3_switch_forward_table.next_control_state[1], noAction_action.prev_control_state);
    mkConnection(toClient(module_l3_switch_ipv4_nhop_req_ff, module_l3_switch_ipv4_nhop_rsp_ff), module_l3_switch_ipv4_nhop.prev_control_state);
    mkConnection(module_l3_switch_ipv4_nhop.next_control_state[0], setnhop_action.prev_control_state);
    mkConnection(module_l3_switch_ipv4_nhop.next_control_state[1], block_action.prev_control_state);
    mkConnection(module_l3_switch_ipv4_nhop.next_control_state[2], noAction_action.prev_control_state);
    mkConnection(toClient(module_l3_switch_send_frame_req_ff, module_l3_switch_send_frame_rsp_ff), module_l3_switch_send_frame.prev_control_state);
    mkConnection(module_l3_switch_send_frame.next_control_state[0], setsmac_action.prev_control_state);
    mkConnection(module_l3_switch_send_frame.next_control_state[1], block_action.prev_control_state);
    mkConnection(module_l3_switch_send_frame.next_control_state[2], noAction_action.prev_control_state);
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
        if (h.hdr.state2) begin
            node_4_req_ff.enq(_req);
            dbprint(3, $format("node_3 true", fshow(meta)));
        end
        else begin
            _req_ff.enq(_req);
            dbprint(3, $format("node_3 false", fshow(meta)));
        end
    endrule
    rule rl_node_4 if (node_4_req_ff.notEmpty);
        node_4_req_ff.deq;
        let _req = node_4_req_ff.first;
        let meta = _req.meta;
        if (meta.hdr.ipv4 matches tagged Valid .h &&& h.hdr.ttl > 0) begin
            module_l3_switch.ipv4_nhop_req_ff.enq(_req);
            dbprint(3, $format("node_4 true", fshow(meta)));
        end
        else begin
            _req_ff.enq(_req);
            dbprint(3, $format("node_4 false", fshow(meta)));
        end
    endrule
    rule rl_module_l3_switch_ipv4_nhop if (module_l3_switch_ipv4_nhop_rsp_ff.notEmpty);
        module_l3_switch_ipv4_nhop_rsp_ff.deq;
        let _rsp = module_l3_switch_ipv4_nhop_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                module_l3_switch.forward_table_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    rule rl_module_l3_switch_forward_table if (module_l3_switch_forward_table_rsp_ff.notEmpty);
        module_l3_switch_forward_table_rsp_ff.deq;
        let _rsp = module_l3_switch_forward_table_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                module_l3_switch.send_frame_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    rule rl_module_l3_switch_send_frame if (module_l3_switch_send_frame_rsp_ff.notEmpty);
        module_l3_switch_send_frame_rsp_ff.deq;
        let _rsp = module_l3_switch_send_frame_rsp_ff.first;
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
    method module_l3_switch_forward_table_add_entry = module_l3_switch_forward_table.add_entry;
    method module_l3_switch_ipv4_nhop_add_entry = module_l3_switch_ipv4_nhop.add_entry;
    method module_l3_switch_send_frame_add_entry = module_l3_switch_send_frame.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        module_l3_switch_forward_table.set_verbosity(verbosity);
        module_l3_switch_ipv4_nhop.set_verbosity(verbosity);
        module_l3_switch_send_frame.set_verbosity(verbosity);
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
