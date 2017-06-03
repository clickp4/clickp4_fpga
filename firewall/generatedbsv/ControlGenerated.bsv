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
    BLOCK0,
    NOP0,
    NOACTION2
} ModuleFirewallFirewallWithTcpActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(19, 99, 2, module_firewall_firewall_with_tcp)
typedef Table#(3, MetadataRequest, ModuleFirewallFirewallWithTcpParam, ConnectalTypes::ModuleFirewallFirewallWithTcpReqT, ConnectalTypes::ModuleFirewallFirewallWithTcpRspT) ModuleFirewallFirewallWithTcpTable;
typedef MatchTable#(1, 19, 256, SizeOf#(ConnectalTypes::ModuleFirewallFirewallWithTcpReqT), SizeOf#(ConnectalTypes::ModuleFirewallFirewallWithTcpRspT)) ModuleFirewallFirewallWithTcpMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleFirewallFirewallWithTcpMatchTable, mkMatchTable_ModuleFirewallFirewallWithTcp)
instance Table_request #(ConnectalTypes::ModuleFirewallFirewallWithTcpReqT);
    function ConnectalTypes::ModuleFirewallFirewallWithTcpReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleFirewallFirewallWithTcpReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleFirewallFirewallWithTcpReqT {src_addr: src_addr,dst_addr: dst_addr,src_port: src_port,dst_port: dst_port, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleFirewallFirewallWithTcpRspT, ModuleFirewallFirewallWithTcpParam, 3);
    function Action table_execute(ConnectalTypes::ModuleFirewallFirewallWithTcpRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, ModuleFirewallFirewallWithTcpParam))) fifos);
        action
        case (unpack(resp._action)) matches
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    BLOCK1,
    NOP1,
    NOACTION3
} ModuleFirewallFirewallWithUdpActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(20, 99, 2, module_firewall_firewall_with_udp)
typedef Table#(3, MetadataRequest, ModuleFirewallFirewallWithUdpParam, ConnectalTypes::ModuleFirewallFirewallWithUdpReqT, ConnectalTypes::ModuleFirewallFirewallWithUdpRspT) ModuleFirewallFirewallWithUdpTable;
typedef MatchTable#(1, 20, 256, SizeOf#(ConnectalTypes::ModuleFirewallFirewallWithUdpReqT), SizeOf#(ConnectalTypes::ModuleFirewallFirewallWithUdpRspT)) ModuleFirewallFirewallWithUdpMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleFirewallFirewallWithUdpMatchTable, mkMatchTable_ModuleFirewallFirewallWithUdp)
instance Table_request #(ConnectalTypes::ModuleFirewallFirewallWithUdpReqT);
    function ConnectalTypes::ModuleFirewallFirewallWithUdpReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleFirewallFirewallWithUdpReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dstAddr = ethernet.hdr.dstAddr;
            v = ConnectalTypes::ModuleFirewallFirewallWithUdpReqT {src_addr: src_addr,dst_addr: dst_addr,src_port: src_port,dst_port: dst_port, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleFirewallFirewallWithUdpRspT, ModuleFirewallFirewallWithUdpParam, 3);
    function Action table_execute(ConnectalTypes::ModuleFirewallFirewallWithUdpRspT resp, MetadataRequest metadata, Vector#(3, FIFOF#(Tuple2#(MetadataRequest, ModuleFirewallFirewallWithUdpParam))) fifos);
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
`MATCHTABLE_SIM(16, 72, 2, pipeline_start_tbl_pipeline_start)
typedef Table#(3, MetadataRequest, PipelineStartTblPipelineStartParam, ConnectalTypes::PipelineStartTblPipelineStartReqT, ConnectalTypes::PipelineStartTblPipelineStartRspT) PipelineStartTblPipelineStartTable;
typedef MatchTable#(1, 16, 256, SizeOf#(ConnectalTypes::PipelineStartTblPipelineStartReqT), SizeOf#(ConnectalTypes::PipelineStartTblPipelineStartRspT)) PipelineStartTblPipelineStartMatchTable;
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
typedef Engine#(1, MetadataRequest, ModuleFirewallFirewallWithUdpParam) NoActionAction;
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
// INST (1) meta.security_metadata.drop_flag; = 1
// mark_to_drop 
typedef Engine#(1, MetadataRequest, ModuleFirewallFirewallWithUdpParam) BlockAction;
typedef Engine#(1, MetadataRequest, ModuleFirewallFirewallWithUdpParam) NopAction;
// =============== control ingress ==============
interface Ingress;
    interface PipeIn#(MetadataRequest) prev;
    interface PipeOut#(MetadataRequest) next;
    method Action module_firewall_firewall_with_tcp_add_entry(ConnectalTypes::ModuleFirewallFirewallWithTcpReqT key, ConnectalTypes::ModuleFirewallFirewallWithTcpRspT value);
    method Action module_firewall_firewall_with_udp_add_entry(ConnectalTypes::ModuleFirewallFirewallWithUdpReqT key, ConnectalTypes::ModuleFirewallFirewallWithUdpRspT value);
    method Action pipeline_start_tbl_pipeline_start_add_entry(ConnectalTypes::PipelineStartTblPipelineStartReqT key, ConnectalTypes::PipelineStartTblPipelineStartRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_firewall_firewall_with_tcp_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_firewall_firewall_with_tcp_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_firewall_firewall_with_udp_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_firewall_firewall_with_udp_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_start_tbl_pipeline_start_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) pipeline_start_tbl_pipeline_start_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_4_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_5_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_6_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_8_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::ActSetBitmapAction actsetbitmap_action <- mkEngine(toList(vec(step_1)));
    Control::ActSetChainAction actsetchain_action <- mkEngine(toList(vec(step_1)));
    Control::BlockAction block_action <- mkEngine(toList(vec(step_1)));
    Control::NopAction nop_action <- mkEngine(toList(vec(step_1)));
    ModuleFirewallFirewallWithTcpMatchTable module_firewall_firewall_with_tcp_table <- mkMatchTable_ModuleFirewallFirewallWithTcp("module_firewall_firewall_with_tcp");
    Control::ModuleFirewallFirewallWithTcpTable module_firewall_firewall_with_tcp <- mkTable(table_request, table_execute, module_firewall_firewall_with_tcp_table);
    messageM(printType(typeOf(module_firewall_firewall_with_tcp_table)));
    messageM(printType(typeOf(module_firewall_firewall_with_tcp)));
    ModuleFirewallFirewallWithUdpMatchTable module_firewall_firewall_with_udp_table <- mkMatchTable_ModuleFirewallFirewallWithUdp("module_firewall_firewall_with_udp");
    Control::ModuleFirewallFirewallWithUdpTable module_firewall_firewall_with_udp <- mkTable(table_request, table_execute, module_firewall_firewall_with_udp_table);
    messageM(printType(typeOf(module_firewall_firewall_with_udp_table)));
    messageM(printType(typeOf(module_firewall_firewall_with_udp)));
    PipelineStartTblPipelineStartMatchTable pipeline_start_tbl_pipeline_start_table <- mkMatchTable_PipelineStartTblPipelineStart("pipeline_start_tbl_pipeline_start");
    Control::PipelineStartTblPipelineStartTable pipeline_start_tbl_pipeline_start <- mkTable(table_request, table_execute, pipeline_start_tbl_pipeline_start_table);
    messageM(printType(typeOf(pipeline_start_tbl_pipeline_start_table)));
    messageM(printType(typeOf(pipeline_start_tbl_pipeline_start)));
    mkConnection(toClient(module_firewall_firewall_with_tcp_req_ff, module_firewall_firewall_with_tcp_rsp_ff), module_firewall_firewall_with_tcp.prev_control_state);
    mkConnection(module_firewall_firewall_with_tcp.next_control_state[0], block_action.prev_control_state);
    mkConnection(module_firewall_firewall_with_tcp.next_control_state[1], nop_action.prev_control_state);
    mkConnection(module_firewall_firewall_with_tcp.next_control_state[2], noAction_action.prev_control_state);
    mkConnection(toClient(module_firewall_firewall_with_udp_req_ff, module_firewall_firewall_with_udp_rsp_ff), module_firewall_firewall_with_udp.prev_control_state);
    mkConnection(module_firewall_firewall_with_udp.next_control_state[0], block_action.prev_control_state);
    mkConnection(module_firewall_firewall_with_udp.next_control_state[1], nop_action.prev_control_state);
    mkConnection(module_firewall_firewall_with_udp.next_control_state[2], noAction_action.prev_control_state);
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
        if (meta.hdr.ipv4 matches tagged Valid .h) begin
            node_6_req_ff.enq(_req);
            dbprint(3, $format("node_5 true", fshow(meta)));
        end
        else begin
            _req_ff.enq(_req);
            dbprint(3, $format("node_5 false", fshow(meta)));
        end
    endrule
    rule rl_node_6 if (node_6_req_ff.notEmpty);
        node_6_req_ff.deq;
        let _req = node_6_req_ff.first;
        let meta = _req.meta;
        if (meta.hdr.udp matches tagged Valid .h) begin
            module_firewall.firewall_with_udp_req_ff.enq(_req);
            dbprint(3, $format("node_6 true", fshow(meta)));
        end
        else begin
            node_8_req_ff.enq(_req);
            dbprint(3, $format("node_6 false", fshow(meta)));
        end
    endrule
    rule rl_module_firewall_firewall_with_udp if (module_firewall_firewall_with_udp_rsp_ff.notEmpty);
        module_firewall_firewall_with_udp_rsp_ff.deq;
        let _rsp = module_firewall_firewall_with_udp_rsp_ff.first;
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
    rule rl_node_8 if (node_8_req_ff.notEmpty);
        node_8_req_ff.deq;
        let _req = node_8_req_ff.first;
        let meta = _req.meta;
        if (meta.hdr.tcp matches tagged Valid .h) begin
            module_firewall.firewall_with_tcp_req_ff.enq(_req);
            dbprint(3, $format("node_8 true", fshow(meta)));
        end
        else begin
            _req_ff.enq(_req);
            dbprint(3, $format("node_8 false", fshow(meta)));
        end
    endrule
    rule rl_module_firewall_firewall_with_tcp if (module_firewall_firewall_with_tcp_rsp_ff.notEmpty);
        module_firewall_firewall_with_tcp_rsp_ff.deq;
        let _rsp = module_firewall_firewall_with_tcp_rsp_ff.first;
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
    method module_firewall_firewall_with_tcp_add_entry = module_firewall_firewall_with_tcp.add_entry;
    method module_firewall_firewall_with_udp_add_entry = module_firewall_firewall_with_udp.add_entry;
    method pipeline_start_tbl_pipeline_start_add_entry = pipeline_start_tbl_pipeline_start.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        module_firewall_firewall_with_tcp.set_verbosity(verbosity);
        module_firewall_firewall_with_udp.set_verbosity(verbosity);
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
