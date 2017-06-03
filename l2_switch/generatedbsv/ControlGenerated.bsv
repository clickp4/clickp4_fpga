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
    FORWARD0,
    NOACTION1
} ModuleL2SwitchDmacActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(10, 54, 1, module_l2_switch_dmac)
typedef Table#(2, MetadataRequest, ModuleL2SwitchDmacParam, ConnectalTypes::ModuleL2SwitchDmacReqT, ConnectalTypes::ModuleL2SwitchDmacRspT) ModuleL2SwitchDmacTable;
typedef MatchTable#(1, 10, 256, SizeOf#(ConnectalTypes::ModuleL2SwitchDmacReqT), SizeOf#(ConnectalTypes::ModuleL2SwitchDmacRspT)) ModuleL2SwitchDmacMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleL2SwitchDmacMatchTable, mkMatchTable_ModuleL2SwitchDmac)
instance Table_request #(ConnectalTypes::ModuleL2SwitchDmacReqT);
    function ConnectalTypes::ModuleL2SwitchDmacReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleL2SwitchDmacReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let dst_addr = fromMaybe(?, data.meta.meta.dst_addr);
            v = ConnectalTypes::ModuleL2SwitchDmacReqT {dst_addr: dst_addr, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleL2SwitchDmacRspT, ModuleL2SwitchDmacParam, 2);
    function Action table_execute(ConnectalTypes::ModuleL2SwitchDmacRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleL2SwitchDmacParam))) fifos);
        action
        case (unpack(resp._action)) matches
            FORWARD0: begin
                ModuleL2SwitchDmacParam req = FowardReqT {_port:resp._port};
                fifos[0].enq(tuple2(metadata, req));
            end
            NOACTION1: begin
                fifos[1].enq(tuple2(metadata, ?));
            end
        endcase
        endaction
    endfunction
endinstance
typedef enum {
    MACLEARN0,
    NOACTION2
} ModuleL2SwitchSmacActionT deriving (Bits, Eq, FShow);
`MATCHTABLE_SIM(11, 54, 1, module_l2_switch_smac)
typedef Table#(2, MetadataRequest, ModuleL2SwitchSmacParam, ConnectalTypes::ModuleL2SwitchSmacReqT, ConnectalTypes::ModuleL2SwitchSmacRspT) ModuleL2SwitchSmacTable;
typedef MatchTable#(1, 11, 256, SizeOf#(ConnectalTypes::ModuleL2SwitchSmacReqT), SizeOf#(ConnectalTypes::ModuleL2SwitchSmacRspT)) ModuleL2SwitchSmacMatchTable;
`SynthBuildModule1(mkMatchTable, String, ModuleL2SwitchSmacMatchTable, mkMatchTable_ModuleL2SwitchSmac)
instance Table_request #(ConnectalTypes::ModuleL2SwitchSmacReqT);
    function ConnectalTypes::ModuleL2SwitchSmacReqT table_request(MetadataRequest data);
        ConnectalTypes::ModuleL2SwitchSmacReqT v = defaultValue;
        if (data.meta.hdr.ethernet matches tagged Valid .ethernet) begin
            let src_addr = ethernet.hdr.src_addr;
            v = ConnectalTypes::ModuleL2SwitchSmacReqT {src_addr: src_addr, padding: 0};
        end
        return v;
    endfunction
endinstance
instance Table_execute #(ConnectalTypes::ModuleL2SwitchSmacRspT, ModuleL2SwitchSmacParam, 2);
    function Action table_execute(ConnectalTypes::ModuleL2SwitchSmacRspT resp, MetadataRequest metadata, Vector#(2, FIFOF#(Tuple2#(MetadataRequest, ModuleL2SwitchSmacParam))) fifos);
        action
        case (unpack(resp._action)) matches
            MACLEARN0: begin
                ModuleL2SwitchSmacParam req = MaclearnReqT {_receiver: resp._receiver};
                fifos[0].enq(tuple2(metadata, req));
                end
            NOACTION2: begin
                fifos[1].enq(tuple2(metadata, ?));
                end
        endcase
        endaction
    endfunction
endinstance
typedef Engine#(1, MetadataRequest, ModuleL2SwitchSmacParam) NoActionAction;
// INST (9) standard_metadata.egress_spec; = port;
typedef Engine#(1, MetadataRequest, ModuleL2SwitchDmacParam) ForwardAction;
instance Action_execute #(ModuleL2SwitchDmacParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleL2SwitchDmacParam param);
        actionvalue
            $display("(%0d) step 1: ", $time, fshow(meta));
            return meta;
        endactionvalue
    endfunction
endinstance
// INST extern digest
typedef Engine#(1, MetadataRequest, ModuleL2SwitchSmacParam) MacLearnAction;
instance Action_execute #(ModuleL2SwitchSmacParam);
    function ActionValue#(MetadataRequest) step_1 (MetadataRequest meta, ModuleL2SwitchSmacParam param);
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
    method Action module_l2_switch_dmac_add_entry(ConnectalTypes::ModuleL2SwitchDmacReqT key, ConnectalTypes::ModuleL2SwitchDmacRspT value);
    method Action module_l2_switch_smac_add_entry(ConnectalTypes::ModuleL2SwitchSmacReqT key, ConnectalTypes::ModuleL2SwitchSmacRspT value);
    method Action set_verbosity(int verbosity);
endinterface
module mkIngress (Ingress);
    `PRINT_DEBUG_MSG
    FIFOF#(MetadataRequest) entry_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) entry_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l2_switch_dmac_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l2_switch_dmac_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l2_switch_smac_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) module_l2_switch_smac_rsp_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) node_2_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_req_ff <- mkFIFOF;
    FIFOF#(MetadataRequest) exit_rsp_ff <- mkFIFOF;
    Control::NoActionAction noAction_action <- mkEngine(toList(vec(step_1)));
    Control::ForwardAction forward_action <- mkEngine(toList(vec(step_1)));
    Control::MacLearnAction maclearn_action <- mkEngine(toList(vec(step_1)));
    ModuleL2SwitchDmacMatchTable module_l2_switch_dmac_table <- mkMatchTable_ModuleL2SwitchDmac("module_l2_switch_dmac");
    Control::ModuleL2SwitchDmacTable module_l2_switch_dmac <- mkTable(table_request, table_execute, module_l2_switch_dmac_table);
    messageM(printType(typeOf(module_l2_switch_dmac_table)));
    messageM(printType(typeOf(module_l2_switch_dmac)));
    ModuleL2SwitchSmacMatchTable module_l2_switch_smac_table <- mkMatchTable_ModuleL2SwitchSmac("module_l2_switch_smac");
    Control::ModuleL2SwitchSmacTable module_l2_switch_smac <- mkTable(table_request, table_execute, module_l2_switch_smac_table);
    messageM(printType(typeOf(module_l2_switch_smac_table)));
    messageM(printType(typeOf(module_l2_switch_smac)));
    mkConnection(toClient(module_l2_switch_dmac_req_ff, module_l2_switch_dmac_rsp_ff), module_l2_switch_dmac.prev_control_state);
    mkConnection(module_l2_switch_dmac.next_control_state[0], forward_action.prev_control_state);
    //mkConnection(module_l2_switch_dmac.next_control_state[1], noAction_action.prev_control_state);
    mkConnection(toClient(module_l2_switch_smac_req_ff, module_l2_switch_smac_rsp_ff), module_l2_switch_smac.prev_control_state);
    mkConnection(module_l2_switch_smac.next_control_state[0], maclearn_action.prev_control_state);
    mkConnection(module_l2_switch_smac.next_control_state[1], noAction_action.prev_control_state);
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
            module_l2_switch_smac_req_ff.enq(_req);
            dbprint(3, $format("node_2 true", fshow(meta)));
        // end
        // else begin
        //     _req_ff.enq(_req);
        //     dbprint(3, $format("node_2 false", fshow(meta)));
        // end
    endrule
    rule rl_module_l2_switch_smac if (module_l2_switch_smac_rsp_ff.notEmpty);
        module_l2_switch_smac_rsp_ff.deq;
        let _rsp = module_l2_switch_smac_rsp_ff.first;
        let meta = _rsp.meta;
        let pkt = _rsp.pkt;
        case (_rsp) matches
            default: begin
                MetadataRequest req = MetadataRequest { pkt : pkt, meta : meta};
                module_l2_switch_dmac_req_ff.enq(req);
                dbprint(3, $format("default ", fshow(meta)));
            end
        endcase
    endrule
    rule rl_module_l2_switch_dmac if (module_l2_switch_dmac_rsp_ff.notEmpty);
        module_l2_switch_dmac_rsp_ff.deq;
        let _rsp = module_l2_switch_dmac_rsp_ff.first;
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
    method module_l2_switch_dmac_add_entry = module_l2_switch_dmac.add_entry;
    method module_l2_switch_smac_add_entry = module_l2_switch_smac.add_entry;
    method Action set_verbosity (int verbosity);
        cf_verbosity <= verbosity;
        module_l2_switch_dmac.set_verbosity(verbosity);
        module_l2_switch_smac.set_verbosity(verbosity);
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
