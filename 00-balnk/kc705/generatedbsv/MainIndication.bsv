package MainIndication;

import FIFO::*;
import FIFOF::*;
import GetPut::*;
import Connectable::*;
import Clocks::*;
import FloatingPoint::*;
import Adapter::*;
import Leds::*;
import Vector::*;
import SpecialFIFOs::*;
import ConnectalConfig::*;
import ConnectalMemory::*;
import Portal::*;
import CtrlMux::*;
import MemTypes::*;
import Pipe::*;
import HostInterface::*;
import LinkerLib::*;
import MainAPI::*;
import BuildVector::*;
import Clocks::*;
import Connectable::*;
import GetPut::*;
import Vector::*;
import HostInterface::*;
import MainAPI::*;
import DbgDefs::*;
import Sims::*;
import TieOff::*;
import PktGenChannel::*;
import PktCapChannel::*;
import TxChannel::*;
import RxChannel::*;
import HostChannel::*;
import StreamChannel::*;
import MetaGenChannel::*;
import PktGen::*;
import Board::*;
import Runtime::*;
import Program::*;
import Printf::*;
import Pipe::*;
import Channel::*;
import Stream::*;
import StructDefines::*;
import ConnectalTypes::*;
import Control::*;
import DefaultValue::*;
import Ethernet::*;
import FIFO::*;
import PacketBuffer::*;




typedef struct {
    Bit#(32) version;
} Read_version_rsp_Message deriving (Bits);

typedef struct {
    PktCapRec rec;
} Read_pktcap_perf_info_resp_Message deriving (Bits);

// exposed wrapper portal interface
interface MainIndicationInputPipes;
    interface PipeOut#(Read_version_rsp_Message) read_version_rsp_PipeOut;
    interface PipeOut#(Read_pktcap_perf_info_resp_Message) read_pktcap_perf_info_resp_PipeOut;

endinterface
typedef PipePortal#(2, 0, SlaveDataBusWidth) MainIndicationPortalInput;
interface MainIndicationInput;
    interface MainIndicationPortalInput portalIfc;
    interface MainIndicationInputPipes pipes;
endinterface
interface MainIndicationWrapperPortal;
    interface MainIndicationPortalInput portalIfc;
endinterface
// exposed wrapper MemPortal interface
interface MainIndicationWrapper;
    interface StdPortal portalIfc;
endinterface

instance Connectable#(MainIndicationInputPipes,MainIndication);
   module mkConnection#(MainIndicationInputPipes pipes, MainIndication ifc)(Empty);

    rule handle_read_version_rsp_request;
        let request <- toGet(pipes.read_version_rsp_PipeOut).get();
        ifc.read_version_rsp(request.version);
    endrule

    rule handle_read_pktcap_perf_info_resp_request;
        let request <- toGet(pipes.read_pktcap_perf_info_resp_PipeOut).get();
        ifc.read_pktcap_perf_info_resp(request.rec);
    endrule

   endmodule
endinstance

// exposed wrapper Portal implementation
(* synthesize *)
module mkMainIndicationInput(MainIndicationInput);
    Vector#(2, PipeIn#(Bit#(SlaveDataBusWidth))) requestPipeIn;

    AdapterFromBus#(SlaveDataBusWidth,Read_version_rsp_Message) read_version_rsp_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[0] = read_version_rsp_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Read_pktcap_perf_info_resp_Message) read_pktcap_perf_info_resp_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[1] = read_pktcap_perf_info_resp_requestAdapter.in;

    interface PipePortal portalIfc;
        interface PortalSize messageSize;
        method Bit#(16) size(Bit#(16) methodNumber);
            case (methodNumber)
            0: return fromInteger(valueOf(SizeOf#(Read_version_rsp_Message)));
            1: return fromInteger(valueOf(SizeOf#(Read_pktcap_perf_info_resp_Message)));
            endcase
        endmethod
        endinterface
        interface Vector requests = requestPipeIn;
        interface Vector indications = nil;
        interface PortalInterrupt intr;
           method Bool status();
              return False;
           endmethod
           method Bit#(dataWidth) channel();
              return -1;
           endmethod
        endinterface
    endinterface
    interface MainIndicationInputPipes pipes;
        interface read_version_rsp_PipeOut = read_version_rsp_requestAdapter.out;
        interface read_pktcap_perf_info_resp_PipeOut = read_pktcap_perf_info_resp_requestAdapter.out;
    endinterface
endmodule

module mkMainIndicationWrapperPortal#(MainIndication ifc)(MainIndicationWrapperPortal);
    let dut <- mkMainIndicationInput;
    mkConnection(dut.pipes, ifc);
    interface PipePortal portalIfc = dut.portalIfc;
endmodule

interface MainIndicationWrapperMemPortalPipes;
    interface MainIndicationInputPipes pipes;
    interface MemPortal#(12,32) portalIfc;
endinterface

(* synthesize *)
module mkMainIndicationWrapperMemPortalPipes#(Bit#(SlaveDataBusWidth) id)(MainIndicationWrapperMemPortalPipes);

  let dut <- mkMainIndicationInput;
  PortalCtrlMemSlave#(SlaveControlAddrWidth,SlaveDataBusWidth) ctrlPort <- mkPortalCtrlMemSlave(id, dut.portalIfc.intr);
  let memslave  <- mkMemMethodMuxIn(ctrlPort.memSlave,dut.portalIfc.requests);
  interface MainIndicationInputPipes pipes = dut.pipes;
  interface MemPortal portalIfc = (interface MemPortal;
      interface PhysMemSlave slave = memslave;
      interface ReadOnly interrupt = ctrlPort.interrupt;
      interface WriteOnly num_portals = ctrlPort.num_portals;
    endinterface);
endmodule

// exposed wrapper MemPortal implementation
module mkMainIndicationWrapper#(idType id, MainIndication ifc)(MainIndicationWrapper)
   provisos (Bits#(idType, a__),
	     Add#(b__, a__, SlaveDataBusWidth));
  let dut <- mkMainIndicationWrapperMemPortalPipes(zeroExtend(pack(id)));
  mkConnection(dut.pipes, ifc);
  interface MemPortal portalIfc = dut.portalIfc;
endmodule

// exposed proxy interface
typedef PipePortal#(0, 2, SlaveDataBusWidth) MainIndicationPortalOutput;
interface MainIndicationOutput;
    interface MainIndicationPortalOutput portalIfc;
    interface MainAPI::MainIndication ifc;
endinterface
interface MainIndicationProxy;
    interface StdPortal portalIfc;
    interface MainAPI::MainIndication ifc;
endinterface

interface MainIndicationOutputPipeMethods;
    interface PipeIn#(Read_version_rsp_Message) read_version_rsp;
    interface PipeIn#(Read_pktcap_perf_info_resp_Message) read_pktcap_perf_info_resp;

endinterface

interface MainIndicationOutputPipes;
    interface MainIndicationOutputPipeMethods methods;
    interface MainIndicationPortalOutput portalIfc;
endinterface

function Bit#(16) getMainIndicationMessageSize(Bit#(16) methodNumber);
    case (methodNumber)
            0: return fromInteger(valueOf(SizeOf#(Read_version_rsp_Message)));
            1: return fromInteger(valueOf(SizeOf#(Read_pktcap_perf_info_resp_Message)));
    endcase
endfunction

(* synthesize *)
module mkMainIndicationOutputPipes(MainIndicationOutputPipes);
    Vector#(2, PipeOut#(Bit#(SlaveDataBusWidth))) indicationPipes;

    AdapterToBus#(SlaveDataBusWidth,Read_version_rsp_Message) read_version_rsp_responseAdapter <- mkAdapterToBus();
    indicationPipes[0] = read_version_rsp_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Read_pktcap_perf_info_resp_Message) read_pktcap_perf_info_resp_responseAdapter <- mkAdapterToBus();
    indicationPipes[1] = read_pktcap_perf_info_resp_responseAdapter.out;

    PortalInterrupt#(SlaveDataBusWidth) intrInst <- mkPortalInterrupt(indicationPipes);
    interface MainIndicationOutputPipeMethods methods;
    interface read_version_rsp = read_version_rsp_responseAdapter.in;
    interface read_pktcap_perf_info_resp = read_pktcap_perf_info_resp_responseAdapter.in;

    endinterface
    interface PipePortal portalIfc;
        interface PortalSize messageSize;
            method size = getMainIndicationMessageSize;
        endinterface
        interface Vector requests = nil;
        interface Vector indications = indicationPipes;
        interface PortalInterrupt intr = intrInst;
    endinterface
endmodule

(* synthesize *)
module mkMainIndicationOutput(MainIndicationOutput);
    let indicationPipes <- mkMainIndicationOutputPipes;
    interface MainAPI::MainIndication ifc;

    method Action read_version_rsp(Bit#(32) version);
        indicationPipes.methods.read_version_rsp.enq(Read_version_rsp_Message {version: version});
        //$display("indicationMethod 'read_version_rsp' invoked");
    endmethod
    method Action read_pktcap_perf_info_resp(PktCapRec rec);
        indicationPipes.methods.read_pktcap_perf_info_resp.enq(Read_pktcap_perf_info_resp_Message {rec: rec});
        //$display("indicationMethod 'read_pktcap_perf_info_resp' invoked");
    endmethod
    endinterface
    interface PipePortal portalIfc = indicationPipes.portalIfc;
endmodule
instance PortalMessageSize#(MainIndicationOutput);
   function Bit#(16) portalMessageSize(MainIndicationOutput p, Bit#(16) methodNumber);
      return getMainIndicationMessageSize(methodNumber);
   endfunction
endinstance


interface MainIndicationInverse;
    method ActionValue#(Read_version_rsp_Message) read_version_rsp;
    method ActionValue#(Read_pktcap_perf_info_resp_Message) read_pktcap_perf_info_resp;

endinterface

interface MainIndicationInverter;
    interface MainAPI::MainIndication ifc;
    interface MainIndicationInverse inverseIfc;
endinterface

instance Connectable#(MainIndicationInverse, MainIndicationOutputPipeMethods);
   module mkConnection#(MainIndicationInverse in, MainIndicationOutputPipeMethods out)(Empty);
    mkConnection(in.read_version_rsp, out.read_version_rsp);
    mkConnection(in.read_pktcap_perf_info_resp, out.read_pktcap_perf_info_resp);

   endmodule
endinstance

(* synthesize *)
module mkMainIndicationInverter(MainIndicationInverter);
    FIFOF#(Read_version_rsp_Message) fifo_read_version_rsp <- mkFIFOF();
    FIFOF#(Read_pktcap_perf_info_resp_Message) fifo_read_pktcap_perf_info_resp <- mkFIFOF();

    interface MainAPI::MainIndication ifc;

    method Action read_version_rsp(Bit#(32) version);
        fifo_read_version_rsp.enq(Read_version_rsp_Message {version: version});
    endmethod
    method Action read_pktcap_perf_info_resp(PktCapRec rec);
        fifo_read_pktcap_perf_info_resp.enq(Read_pktcap_perf_info_resp_Message {rec: rec});
    endmethod
    endinterface
    interface MainIndicationInverse inverseIfc;

    method ActionValue#(Read_version_rsp_Message) read_version_rsp;
        fifo_read_version_rsp.deq;
        return fifo_read_version_rsp.first;
    endmethod
    method ActionValue#(Read_pktcap_perf_info_resp_Message) read_pktcap_perf_info_resp;
        fifo_read_pktcap_perf_info_resp.deq;
        return fifo_read_pktcap_perf_info_resp.first;
    endmethod
    endinterface
endmodule

(* synthesize *)
module mkMainIndicationInverterV(MainIndicationInverter);
    PutInverter#(Read_version_rsp_Message) inv_read_version_rsp <- mkPutInverter();
    PutInverter#(Read_pktcap_perf_info_resp_Message) inv_read_pktcap_perf_info_resp <- mkPutInverter();

    interface MainAPI::MainIndication ifc;

    method Action read_version_rsp(Bit#(32) version);
        inv_read_version_rsp.mod.put(Read_version_rsp_Message {version: version});
    endmethod
    method Action read_pktcap_perf_info_resp(PktCapRec rec);
        inv_read_pktcap_perf_info_resp.mod.put(Read_pktcap_perf_info_resp_Message {rec: rec});
    endmethod
    endinterface
    interface MainIndicationInverse inverseIfc;

    method ActionValue#(Read_version_rsp_Message) read_version_rsp;
        let v <- inv_read_version_rsp.inverse.get;
        return v;
    endmethod
    method ActionValue#(Read_pktcap_perf_info_resp_Message) read_pktcap_perf_info_resp;
        let v <- inv_read_pktcap_perf_info_resp.inverse.get;
        return v;
    endmethod
    endinterface
endmodule

// synthesizeable proxy MemPortal
(* synthesize *)
module mkMainIndicationProxySynth#(Bit#(SlaveDataBusWidth) id)(MainIndicationProxy);
  let dut <- mkMainIndicationOutput();
  PortalCtrlMemSlave#(SlaveControlAddrWidth,SlaveDataBusWidth) ctrlPort <- mkPortalCtrlMemSlave(id, dut.portalIfc.intr);
  let memslave  <- mkMemMethodMuxOut(ctrlPort.memSlave,dut.portalIfc.indications);
  interface MemPortal portalIfc = (interface MemPortal;
      interface PhysMemSlave slave = memslave;
      interface ReadOnly interrupt = ctrlPort.interrupt;
      interface WriteOnly num_portals = ctrlPort.num_portals;
    endinterface);
  interface MainAPI::MainIndication ifc = dut.ifc;
endmodule

// exposed proxy MemPortal
module mkMainIndicationProxy#(idType id)(MainIndicationProxy)
   provisos (Bits#(idType, a__),
	     Add#(b__, a__, SlaveDataBusWidth));
   let rv <- mkMainIndicationProxySynth(extend(pack(id)));
   return rv;
endmodule
endpackage: MainIndication
