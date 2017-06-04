package MainRequest;

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
import Xilinx10GE::*;
import XilinxMacWrap::*;
import XilinxEthPhy::*;
import EthMac::*;
import Control::*;
import DefaultValue::*;
import Ethernet::*;
import FIFO::*;
import PacketBuffer::*;




typedef struct {
    Bit#(32) padding;
} Read_version_Message deriving (Bits);

typedef struct {
    Vector#(2,Bit#(64)) data;
    Vector#(2,Bit#(8)) mask;
    Bit#(1) sop;
    Bit#(1) eop;
} WritePacketData_Message deriving (Bits);

typedef struct {
    Bit#(32) verbosity;
} Set_verbosity_Message deriving (Bits);

typedef struct {
    Vector#(2,Bit#(64)) data;
    Vector#(2,Bit#(8)) mask;
    Bit#(1) sop;
    Bit#(1) eop;
} WritePktGenData_Message deriving (Bits);

typedef struct {
    Bit#(32) iteration;
    Bit#(32) ipg;
    Bit#(32) inst;
} Pktgen_start_Message deriving (Bits);

typedef struct {
    Bit#(32) padding;
} Pktgen_stop_Message deriving (Bits);

typedef struct {
    Bit#(32) iteration;
} Pktcap_start_Message deriving (Bits);

typedef struct {
    Bit#(32) padding;
} Pktcap_stop_Message deriving (Bits);

typedef struct {
    Vector#(2,Bit#(64)) data;
    Vector#(2,Bit#(8)) mask;
    Bit#(1) sop;
    Bit#(1) eop;
} WriteMetaGenData_Message deriving (Bits);

typedef struct {
    Bit#(32) iteration;
    Bit#(32) freq;
} Metagen_start_Message deriving (Bits);

typedef struct {
    Bit#(32) padding;
} Metagen_stop_Message deriving (Bits);

typedef struct {
    Bit#(32) padding;
} Read_pktcap_perf_info_Message deriving (Bits);

// exposed wrapper portal interface
interface MainRequestInputPipes;
    interface PipeOut#(Read_version_Message) read_version_PipeOut;
    interface PipeOut#(WritePacketData_Message) writePacketData_PipeOut;
    interface PipeOut#(Set_verbosity_Message) set_verbosity_PipeOut;
    interface PipeOut#(WritePktGenData_Message) writePktGenData_PipeOut;
    interface PipeOut#(Pktgen_start_Message) pktgen_start_PipeOut;
    interface PipeOut#(Pktgen_stop_Message) pktgen_stop_PipeOut;
    interface PipeOut#(Pktcap_start_Message) pktcap_start_PipeOut;
    interface PipeOut#(Pktcap_stop_Message) pktcap_stop_PipeOut;
    interface PipeOut#(WriteMetaGenData_Message) writeMetaGenData_PipeOut;
    interface PipeOut#(Metagen_start_Message) metagen_start_PipeOut;
    interface PipeOut#(Metagen_stop_Message) metagen_stop_PipeOut;
    interface PipeOut#(Read_pktcap_perf_info_Message) read_pktcap_perf_info_PipeOut;

endinterface
typedef PipePortal#(12, 0, SlaveDataBusWidth) MainRequestPortalInput;
interface MainRequestInput;
    interface MainRequestPortalInput portalIfc;
    interface MainRequestInputPipes pipes;
endinterface
interface MainRequestWrapperPortal;
    interface MainRequestPortalInput portalIfc;
endinterface
// exposed wrapper MemPortal interface
interface MainRequestWrapper;
    interface StdPortal portalIfc;
endinterface

instance Connectable#(MainRequestInputPipes,MainRequest);
   module mkConnection#(MainRequestInputPipes pipes, MainRequest ifc)(Empty);

    rule handle_read_version_request;
        let request <- toGet(pipes.read_version_PipeOut).get();
        ifc.read_version();
    endrule

    rule handle_writePacketData_request;
        let request <- toGet(pipes.writePacketData_PipeOut).get();
        ifc.writePacketData(request.data, request.mask, request.sop, request.eop);
    endrule

    rule handle_set_verbosity_request;
        let request <- toGet(pipes.set_verbosity_PipeOut).get();
        ifc.set_verbosity(request.verbosity);
    endrule

    rule handle_writePktGenData_request;
        let request <- toGet(pipes.writePktGenData_PipeOut).get();
        ifc.writePktGenData(request.data, request.mask, request.sop, request.eop);
    endrule

    rule handle_pktgen_start_request;
        let request <- toGet(pipes.pktgen_start_PipeOut).get();
        ifc.pktgen_start(request.iteration, request.ipg, request.inst);
    endrule

    rule handle_pktgen_stop_request;
        let request <- toGet(pipes.pktgen_stop_PipeOut).get();
        ifc.pktgen_stop();
    endrule

    rule handle_pktcap_start_request;
        let request <- toGet(pipes.pktcap_start_PipeOut).get();
        ifc.pktcap_start(request.iteration);
    endrule

    rule handle_pktcap_stop_request;
        let request <- toGet(pipes.pktcap_stop_PipeOut).get();
        ifc.pktcap_stop();
    endrule

    rule handle_writeMetaGenData_request;
        let request <- toGet(pipes.writeMetaGenData_PipeOut).get();
        ifc.writeMetaGenData(request.data, request.mask, request.sop, request.eop);
    endrule

    rule handle_metagen_start_request;
        let request <- toGet(pipes.metagen_start_PipeOut).get();
        ifc.metagen_start(request.iteration, request.freq);
    endrule

    rule handle_metagen_stop_request;
        let request <- toGet(pipes.metagen_stop_PipeOut).get();
        ifc.metagen_stop();
    endrule

    rule handle_read_pktcap_perf_info_request;
        let request <- toGet(pipes.read_pktcap_perf_info_PipeOut).get();
        ifc.read_pktcap_perf_info();
    endrule

   endmodule
endinstance

// exposed wrapper Portal implementation
(* synthesize *)
module mkMainRequestInput(MainRequestInput);
    Vector#(12, PipeIn#(Bit#(SlaveDataBusWidth))) requestPipeIn;

    AdapterFromBus#(SlaveDataBusWidth,Read_version_Message) read_version_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[0] = read_version_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,WritePacketData_Message) writePacketData_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[1] = writePacketData_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Set_verbosity_Message) set_verbosity_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[2] = set_verbosity_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,WritePktGenData_Message) writePktGenData_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[3] = writePktGenData_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Pktgen_start_Message) pktgen_start_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[4] = pktgen_start_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Pktgen_stop_Message) pktgen_stop_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[5] = pktgen_stop_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Pktcap_start_Message) pktcap_start_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[6] = pktcap_start_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Pktcap_stop_Message) pktcap_stop_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[7] = pktcap_stop_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,WriteMetaGenData_Message) writeMetaGenData_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[8] = writeMetaGenData_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Metagen_start_Message) metagen_start_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[9] = metagen_start_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Metagen_stop_Message) metagen_stop_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[10] = metagen_stop_requestAdapter.in;

    AdapterFromBus#(SlaveDataBusWidth,Read_pktcap_perf_info_Message) read_pktcap_perf_info_requestAdapter <- mkAdapterFromBus();
    requestPipeIn[11] = read_pktcap_perf_info_requestAdapter.in;

    interface PipePortal portalIfc;
        interface PortalSize messageSize;
        method Bit#(16) size(Bit#(16) methodNumber);
            case (methodNumber)
            0: return fromInteger(valueOf(SizeOf#(Read_version_Message)));
            1: return fromInteger(valueOf(SizeOf#(WritePacketData_Message)));
            2: return fromInteger(valueOf(SizeOf#(Set_verbosity_Message)));
            3: return fromInteger(valueOf(SizeOf#(WritePktGenData_Message)));
            4: return fromInteger(valueOf(SizeOf#(Pktgen_start_Message)));
            5: return fromInteger(valueOf(SizeOf#(Pktgen_stop_Message)));
            6: return fromInteger(valueOf(SizeOf#(Pktcap_start_Message)));
            7: return fromInteger(valueOf(SizeOf#(Pktcap_stop_Message)));
            8: return fromInteger(valueOf(SizeOf#(WriteMetaGenData_Message)));
            9: return fromInteger(valueOf(SizeOf#(Metagen_start_Message)));
            10: return fromInteger(valueOf(SizeOf#(Metagen_stop_Message)));
            11: return fromInteger(valueOf(SizeOf#(Read_pktcap_perf_info_Message)));
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
    interface MainRequestInputPipes pipes;
        interface read_version_PipeOut = read_version_requestAdapter.out;
        interface writePacketData_PipeOut = writePacketData_requestAdapter.out;
        interface set_verbosity_PipeOut = set_verbosity_requestAdapter.out;
        interface writePktGenData_PipeOut = writePktGenData_requestAdapter.out;
        interface pktgen_start_PipeOut = pktgen_start_requestAdapter.out;
        interface pktgen_stop_PipeOut = pktgen_stop_requestAdapter.out;
        interface pktcap_start_PipeOut = pktcap_start_requestAdapter.out;
        interface pktcap_stop_PipeOut = pktcap_stop_requestAdapter.out;
        interface writeMetaGenData_PipeOut = writeMetaGenData_requestAdapter.out;
        interface metagen_start_PipeOut = metagen_start_requestAdapter.out;
        interface metagen_stop_PipeOut = metagen_stop_requestAdapter.out;
        interface read_pktcap_perf_info_PipeOut = read_pktcap_perf_info_requestAdapter.out;
    endinterface
endmodule

module mkMainRequestWrapperPortal#(MainRequest ifc)(MainRequestWrapperPortal);
    let dut <- mkMainRequestInput;
    mkConnection(dut.pipes, ifc);
    interface PipePortal portalIfc = dut.portalIfc;
endmodule

interface MainRequestWrapperMemPortalPipes;
    interface MainRequestInputPipes pipes;
    interface MemPortal#(12,32) portalIfc;
endinterface

(* synthesize *)
module mkMainRequestWrapperMemPortalPipes#(Bit#(SlaveDataBusWidth) id)(MainRequestWrapperMemPortalPipes);

  let dut <- mkMainRequestInput;
  PortalCtrlMemSlave#(SlaveControlAddrWidth,SlaveDataBusWidth) ctrlPort <- mkPortalCtrlMemSlave(id, dut.portalIfc.intr);
  let memslave  <- mkMemMethodMuxIn(ctrlPort.memSlave,dut.portalIfc.requests);
  interface MainRequestInputPipes pipes = dut.pipes;
  interface MemPortal portalIfc = (interface MemPortal;
      interface PhysMemSlave slave = memslave;
      interface ReadOnly interrupt = ctrlPort.interrupt;
      interface WriteOnly num_portals = ctrlPort.num_portals;
    endinterface);
endmodule

// exposed wrapper MemPortal implementation
module mkMainRequestWrapper#(idType id, MainRequest ifc)(MainRequestWrapper)
   provisos (Bits#(idType, a__),
	     Add#(b__, a__, SlaveDataBusWidth));
  let dut <- mkMainRequestWrapperMemPortalPipes(zeroExtend(pack(id)));
  mkConnection(dut.pipes, ifc);
  interface MemPortal portalIfc = dut.portalIfc;
endmodule

// exposed proxy interface
typedef PipePortal#(0, 12, SlaveDataBusWidth) MainRequestPortalOutput;
interface MainRequestOutput;
    interface MainRequestPortalOutput portalIfc;
    interface MainAPI::MainRequest ifc;
endinterface
interface MainRequestProxy;
    interface StdPortal portalIfc;
    interface MainAPI::MainRequest ifc;
endinterface

interface MainRequestOutputPipeMethods;
    interface PipeIn#(Read_version_Message) read_version;
    interface PipeIn#(WritePacketData_Message) writePacketData;
    interface PipeIn#(Set_verbosity_Message) set_verbosity;
    interface PipeIn#(WritePktGenData_Message) writePktGenData;
    interface PipeIn#(Pktgen_start_Message) pktgen_start;
    interface PipeIn#(Pktgen_stop_Message) pktgen_stop;
    interface PipeIn#(Pktcap_start_Message) pktcap_start;
    interface PipeIn#(Pktcap_stop_Message) pktcap_stop;
    interface PipeIn#(WriteMetaGenData_Message) writeMetaGenData;
    interface PipeIn#(Metagen_start_Message) metagen_start;
    interface PipeIn#(Metagen_stop_Message) metagen_stop;
    interface PipeIn#(Read_pktcap_perf_info_Message) read_pktcap_perf_info;

endinterface

interface MainRequestOutputPipes;
    interface MainRequestOutputPipeMethods methods;
    interface MainRequestPortalOutput portalIfc;
endinterface

function Bit#(16) getMainRequestMessageSize(Bit#(16) methodNumber);
    case (methodNumber)
            0: return fromInteger(valueOf(SizeOf#(Read_version_Message)));
            1: return fromInteger(valueOf(SizeOf#(WritePacketData_Message)));
            2: return fromInteger(valueOf(SizeOf#(Set_verbosity_Message)));
            3: return fromInteger(valueOf(SizeOf#(WritePktGenData_Message)));
            4: return fromInteger(valueOf(SizeOf#(Pktgen_start_Message)));
            5: return fromInteger(valueOf(SizeOf#(Pktgen_stop_Message)));
            6: return fromInteger(valueOf(SizeOf#(Pktcap_start_Message)));
            7: return fromInteger(valueOf(SizeOf#(Pktcap_stop_Message)));
            8: return fromInteger(valueOf(SizeOf#(WriteMetaGenData_Message)));
            9: return fromInteger(valueOf(SizeOf#(Metagen_start_Message)));
            10: return fromInteger(valueOf(SizeOf#(Metagen_stop_Message)));
            11: return fromInteger(valueOf(SizeOf#(Read_pktcap_perf_info_Message)));
    endcase
endfunction

(* synthesize *)
module mkMainRequestOutputPipes(MainRequestOutputPipes);
    Vector#(12, PipeOut#(Bit#(SlaveDataBusWidth))) indicationPipes;

    AdapterToBus#(SlaveDataBusWidth,Read_version_Message) read_version_responseAdapter <- mkAdapterToBus();
    indicationPipes[0] = read_version_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,WritePacketData_Message) writePacketData_responseAdapter <- mkAdapterToBus();
    indicationPipes[1] = writePacketData_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Set_verbosity_Message) set_verbosity_responseAdapter <- mkAdapterToBus();
    indicationPipes[2] = set_verbosity_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,WritePktGenData_Message) writePktGenData_responseAdapter <- mkAdapterToBus();
    indicationPipes[3] = writePktGenData_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Pktgen_start_Message) pktgen_start_responseAdapter <- mkAdapterToBus();
    indicationPipes[4] = pktgen_start_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Pktgen_stop_Message) pktgen_stop_responseAdapter <- mkAdapterToBus();
    indicationPipes[5] = pktgen_stop_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Pktcap_start_Message) pktcap_start_responseAdapter <- mkAdapterToBus();
    indicationPipes[6] = pktcap_start_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Pktcap_stop_Message) pktcap_stop_responseAdapter <- mkAdapterToBus();
    indicationPipes[7] = pktcap_stop_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,WriteMetaGenData_Message) writeMetaGenData_responseAdapter <- mkAdapterToBus();
    indicationPipes[8] = writeMetaGenData_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Metagen_start_Message) metagen_start_responseAdapter <- mkAdapterToBus();
    indicationPipes[9] = metagen_start_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Metagen_stop_Message) metagen_stop_responseAdapter <- mkAdapterToBus();
    indicationPipes[10] = metagen_stop_responseAdapter.out;

    AdapterToBus#(SlaveDataBusWidth,Read_pktcap_perf_info_Message) read_pktcap_perf_info_responseAdapter <- mkAdapterToBus();
    indicationPipes[11] = read_pktcap_perf_info_responseAdapter.out;

    PortalInterrupt#(SlaveDataBusWidth) intrInst <- mkPortalInterrupt(indicationPipes);
    interface MainRequestOutputPipeMethods methods;
    interface read_version = read_version_responseAdapter.in;
    interface writePacketData = writePacketData_responseAdapter.in;
    interface set_verbosity = set_verbosity_responseAdapter.in;
    interface writePktGenData = writePktGenData_responseAdapter.in;
    interface pktgen_start = pktgen_start_responseAdapter.in;
    interface pktgen_stop = pktgen_stop_responseAdapter.in;
    interface pktcap_start = pktcap_start_responseAdapter.in;
    interface pktcap_stop = pktcap_stop_responseAdapter.in;
    interface writeMetaGenData = writeMetaGenData_responseAdapter.in;
    interface metagen_start = metagen_start_responseAdapter.in;
    interface metagen_stop = metagen_stop_responseAdapter.in;
    interface read_pktcap_perf_info = read_pktcap_perf_info_responseAdapter.in;

    endinterface
    interface PipePortal portalIfc;
        interface PortalSize messageSize;
            method size = getMainRequestMessageSize;
        endinterface
        interface Vector requests = nil;
        interface Vector indications = indicationPipes;
        interface PortalInterrupt intr = intrInst;
    endinterface
endmodule

(* synthesize *)
module mkMainRequestOutput(MainRequestOutput);
    let indicationPipes <- mkMainRequestOutputPipes;
    interface MainAPI::MainRequest ifc;

    method Action read_version();
        indicationPipes.methods.read_version.enq(Read_version_Message {padding: 0});
        //$display("indicationMethod 'read_version' invoked");
    endmethod
    method Action writePacketData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        indicationPipes.methods.writePacketData.enq(WritePacketData_Message {data: data, mask: mask, sop: sop, eop: eop});
        //$display("indicationMethod 'writePacketData' invoked");
    endmethod
    method Action set_verbosity(Bit#(32) verbosity);
        indicationPipes.methods.set_verbosity.enq(Set_verbosity_Message {verbosity: verbosity});
        //$display("indicationMethod 'set_verbosity' invoked");
    endmethod
    method Action writePktGenData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        indicationPipes.methods.writePktGenData.enq(WritePktGenData_Message {data: data, mask: mask, sop: sop, eop: eop});
        //$display("indicationMethod 'writePktGenData' invoked");
    endmethod
    method Action pktgen_start(Bit#(32) iteration, Bit#(32) ipg, Bit#(32) inst);
        indicationPipes.methods.pktgen_start.enq(Pktgen_start_Message {iteration: iteration, ipg: ipg, inst: inst});
        //$display("indicationMethod 'pktgen_start' invoked");
    endmethod
    method Action pktgen_stop();
        indicationPipes.methods.pktgen_stop.enq(Pktgen_stop_Message {padding: 0});
        //$display("indicationMethod 'pktgen_stop' invoked");
    endmethod
    method Action pktcap_start(Bit#(32) iteration);
        indicationPipes.methods.pktcap_start.enq(Pktcap_start_Message {iteration: iteration});
        //$display("indicationMethod 'pktcap_start' invoked");
    endmethod
    method Action pktcap_stop();
        indicationPipes.methods.pktcap_stop.enq(Pktcap_stop_Message {padding: 0});
        //$display("indicationMethod 'pktcap_stop' invoked");
    endmethod
    method Action writeMetaGenData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        indicationPipes.methods.writeMetaGenData.enq(WriteMetaGenData_Message {data: data, mask: mask, sop: sop, eop: eop});
        //$display("indicationMethod 'writeMetaGenData' invoked");
    endmethod
    method Action metagen_start(Bit#(32) iteration, Bit#(32) freq);
        indicationPipes.methods.metagen_start.enq(Metagen_start_Message {iteration: iteration, freq: freq});
        //$display("indicationMethod 'metagen_start' invoked");
    endmethod
    method Action metagen_stop();
        indicationPipes.methods.metagen_stop.enq(Metagen_stop_Message {padding: 0});
        //$display("indicationMethod 'metagen_stop' invoked");
    endmethod
    method Action read_pktcap_perf_info();
        indicationPipes.methods.read_pktcap_perf_info.enq(Read_pktcap_perf_info_Message {padding: 0});
        //$display("indicationMethod 'read_pktcap_perf_info' invoked");
    endmethod
    endinterface
    interface PipePortal portalIfc = indicationPipes.portalIfc;
endmodule
instance PortalMessageSize#(MainRequestOutput);
   function Bit#(16) portalMessageSize(MainRequestOutput p, Bit#(16) methodNumber);
      return getMainRequestMessageSize(methodNumber);
   endfunction
endinstance


interface MainRequestInverse;
    method ActionValue#(Read_version_Message) read_version;
    method ActionValue#(WritePacketData_Message) writePacketData;
    method ActionValue#(Set_verbosity_Message) set_verbosity;
    method ActionValue#(WritePktGenData_Message) writePktGenData;
    method ActionValue#(Pktgen_start_Message) pktgen_start;
    method ActionValue#(Pktgen_stop_Message) pktgen_stop;
    method ActionValue#(Pktcap_start_Message) pktcap_start;
    method ActionValue#(Pktcap_stop_Message) pktcap_stop;
    method ActionValue#(WriteMetaGenData_Message) writeMetaGenData;
    method ActionValue#(Metagen_start_Message) metagen_start;
    method ActionValue#(Metagen_stop_Message) metagen_stop;
    method ActionValue#(Read_pktcap_perf_info_Message) read_pktcap_perf_info;

endinterface

interface MainRequestInverter;
    interface MainAPI::MainRequest ifc;
    interface MainRequestInverse inverseIfc;
endinterface

instance Connectable#(MainRequestInverse, MainRequestOutputPipeMethods);
   module mkConnection#(MainRequestInverse in, MainRequestOutputPipeMethods out)(Empty);
    mkConnection(in.read_version, out.read_version);
    mkConnection(in.writePacketData, out.writePacketData);
    mkConnection(in.set_verbosity, out.set_verbosity);
    mkConnection(in.writePktGenData, out.writePktGenData);
    mkConnection(in.pktgen_start, out.pktgen_start);
    mkConnection(in.pktgen_stop, out.pktgen_stop);
    mkConnection(in.pktcap_start, out.pktcap_start);
    mkConnection(in.pktcap_stop, out.pktcap_stop);
    mkConnection(in.writeMetaGenData, out.writeMetaGenData);
    mkConnection(in.metagen_start, out.metagen_start);
    mkConnection(in.metagen_stop, out.metagen_stop);
    mkConnection(in.read_pktcap_perf_info, out.read_pktcap_perf_info);

   endmodule
endinstance

(* synthesize *)
module mkMainRequestInverter(MainRequestInverter);
    FIFOF#(Read_version_Message) fifo_read_version <- mkFIFOF();
    FIFOF#(WritePacketData_Message) fifo_writePacketData <- mkFIFOF();
    FIFOF#(Set_verbosity_Message) fifo_set_verbosity <- mkFIFOF();
    FIFOF#(WritePktGenData_Message) fifo_writePktGenData <- mkFIFOF();
    FIFOF#(Pktgen_start_Message) fifo_pktgen_start <- mkFIFOF();
    FIFOF#(Pktgen_stop_Message) fifo_pktgen_stop <- mkFIFOF();
    FIFOF#(Pktcap_start_Message) fifo_pktcap_start <- mkFIFOF();
    FIFOF#(Pktcap_stop_Message) fifo_pktcap_stop <- mkFIFOF();
    FIFOF#(WriteMetaGenData_Message) fifo_writeMetaGenData <- mkFIFOF();
    FIFOF#(Metagen_start_Message) fifo_metagen_start <- mkFIFOF();
    FIFOF#(Metagen_stop_Message) fifo_metagen_stop <- mkFIFOF();
    FIFOF#(Read_pktcap_perf_info_Message) fifo_read_pktcap_perf_info <- mkFIFOF();

    interface MainAPI::MainRequest ifc;

    method Action read_version();
        fifo_read_version.enq(Read_version_Message {padding: 0});
    endmethod
    method Action writePacketData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        fifo_writePacketData.enq(WritePacketData_Message {data: data, mask: mask, sop: sop, eop: eop});
    endmethod
    method Action set_verbosity(Bit#(32) verbosity);
        fifo_set_verbosity.enq(Set_verbosity_Message {verbosity: verbosity});
    endmethod
    method Action writePktGenData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        fifo_writePktGenData.enq(WritePktGenData_Message {data: data, mask: mask, sop: sop, eop: eop});
    endmethod
    method Action pktgen_start(Bit#(32) iteration, Bit#(32) ipg, Bit#(32) inst);
        fifo_pktgen_start.enq(Pktgen_start_Message {iteration: iteration, ipg: ipg, inst: inst});
    endmethod
    method Action pktgen_stop();
        fifo_pktgen_stop.enq(Pktgen_stop_Message {padding: 0});
    endmethod
    method Action pktcap_start(Bit#(32) iteration);
        fifo_pktcap_start.enq(Pktcap_start_Message {iteration: iteration});
    endmethod
    method Action pktcap_stop();
        fifo_pktcap_stop.enq(Pktcap_stop_Message {padding: 0});
    endmethod
    method Action writeMetaGenData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        fifo_writeMetaGenData.enq(WriteMetaGenData_Message {data: data, mask: mask, sop: sop, eop: eop});
    endmethod
    method Action metagen_start(Bit#(32) iteration, Bit#(32) freq);
        fifo_metagen_start.enq(Metagen_start_Message {iteration: iteration, freq: freq});
    endmethod
    method Action metagen_stop();
        fifo_metagen_stop.enq(Metagen_stop_Message {padding: 0});
    endmethod
    method Action read_pktcap_perf_info();
        fifo_read_pktcap_perf_info.enq(Read_pktcap_perf_info_Message {padding: 0});
    endmethod
    endinterface
    interface MainRequestInverse inverseIfc;

    method ActionValue#(Read_version_Message) read_version;
        fifo_read_version.deq;
        return fifo_read_version.first;
    endmethod
    method ActionValue#(WritePacketData_Message) writePacketData;
        fifo_writePacketData.deq;
        return fifo_writePacketData.first;
    endmethod
    method ActionValue#(Set_verbosity_Message) set_verbosity;
        fifo_set_verbosity.deq;
        return fifo_set_verbosity.first;
    endmethod
    method ActionValue#(WritePktGenData_Message) writePktGenData;
        fifo_writePktGenData.deq;
        return fifo_writePktGenData.first;
    endmethod
    method ActionValue#(Pktgen_start_Message) pktgen_start;
        fifo_pktgen_start.deq;
        return fifo_pktgen_start.first;
    endmethod
    method ActionValue#(Pktgen_stop_Message) pktgen_stop;
        fifo_pktgen_stop.deq;
        return fifo_pktgen_stop.first;
    endmethod
    method ActionValue#(Pktcap_start_Message) pktcap_start;
        fifo_pktcap_start.deq;
        return fifo_pktcap_start.first;
    endmethod
    method ActionValue#(Pktcap_stop_Message) pktcap_stop;
        fifo_pktcap_stop.deq;
        return fifo_pktcap_stop.first;
    endmethod
    method ActionValue#(WriteMetaGenData_Message) writeMetaGenData;
        fifo_writeMetaGenData.deq;
        return fifo_writeMetaGenData.first;
    endmethod
    method ActionValue#(Metagen_start_Message) metagen_start;
        fifo_metagen_start.deq;
        return fifo_metagen_start.first;
    endmethod
    method ActionValue#(Metagen_stop_Message) metagen_stop;
        fifo_metagen_stop.deq;
        return fifo_metagen_stop.first;
    endmethod
    method ActionValue#(Read_pktcap_perf_info_Message) read_pktcap_perf_info;
        fifo_read_pktcap_perf_info.deq;
        return fifo_read_pktcap_perf_info.first;
    endmethod
    endinterface
endmodule

(* synthesize *)
module mkMainRequestInverterV(MainRequestInverter);
    PutInverter#(Read_version_Message) inv_read_version <- mkPutInverter();
    PutInverter#(WritePacketData_Message) inv_writePacketData <- mkPutInverter();
    PutInverter#(Set_verbosity_Message) inv_set_verbosity <- mkPutInverter();
    PutInverter#(WritePktGenData_Message) inv_writePktGenData <- mkPutInverter();
    PutInverter#(Pktgen_start_Message) inv_pktgen_start <- mkPutInverter();
    PutInverter#(Pktgen_stop_Message) inv_pktgen_stop <- mkPutInverter();
    PutInverter#(Pktcap_start_Message) inv_pktcap_start <- mkPutInverter();
    PutInverter#(Pktcap_stop_Message) inv_pktcap_stop <- mkPutInverter();
    PutInverter#(WriteMetaGenData_Message) inv_writeMetaGenData <- mkPutInverter();
    PutInverter#(Metagen_start_Message) inv_metagen_start <- mkPutInverter();
    PutInverter#(Metagen_stop_Message) inv_metagen_stop <- mkPutInverter();
    PutInverter#(Read_pktcap_perf_info_Message) inv_read_pktcap_perf_info <- mkPutInverter();

    interface MainAPI::MainRequest ifc;

    method Action read_version();
        inv_read_version.mod.put(Read_version_Message {padding: 0});
    endmethod
    method Action writePacketData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        inv_writePacketData.mod.put(WritePacketData_Message {data: data, mask: mask, sop: sop, eop: eop});
    endmethod
    method Action set_verbosity(Bit#(32) verbosity);
        inv_set_verbosity.mod.put(Set_verbosity_Message {verbosity: verbosity});
    endmethod
    method Action writePktGenData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        inv_writePktGenData.mod.put(WritePktGenData_Message {data: data, mask: mask, sop: sop, eop: eop});
    endmethod
    method Action pktgen_start(Bit#(32) iteration, Bit#(32) ipg, Bit#(32) inst);
        inv_pktgen_start.mod.put(Pktgen_start_Message {iteration: iteration, ipg: ipg, inst: inst});
    endmethod
    method Action pktgen_stop();
        inv_pktgen_stop.mod.put(Pktgen_stop_Message {padding: 0});
    endmethod
    method Action pktcap_start(Bit#(32) iteration);
        inv_pktcap_start.mod.put(Pktcap_start_Message {iteration: iteration});
    endmethod
    method Action pktcap_stop();
        inv_pktcap_stop.mod.put(Pktcap_stop_Message {padding: 0});
    endmethod
    method Action writeMetaGenData(Vector#(2,Bit#(64)) data, Vector#(2,Bit#(8)) mask, Bit#(1) sop, Bit#(1) eop);
        inv_writeMetaGenData.mod.put(WriteMetaGenData_Message {data: data, mask: mask, sop: sop, eop: eop});
    endmethod
    method Action metagen_start(Bit#(32) iteration, Bit#(32) freq);
        inv_metagen_start.mod.put(Metagen_start_Message {iteration: iteration, freq: freq});
    endmethod
    method Action metagen_stop();
        inv_metagen_stop.mod.put(Metagen_stop_Message {padding: 0});
    endmethod
    method Action read_pktcap_perf_info();
        inv_read_pktcap_perf_info.mod.put(Read_pktcap_perf_info_Message {padding: 0});
    endmethod
    endinterface
    interface MainRequestInverse inverseIfc;

    method ActionValue#(Read_version_Message) read_version;
        let v <- inv_read_version.inverse.get;
        return v;
    endmethod
    method ActionValue#(WritePacketData_Message) writePacketData;
        let v <- inv_writePacketData.inverse.get;
        return v;
    endmethod
    method ActionValue#(Set_verbosity_Message) set_verbosity;
        let v <- inv_set_verbosity.inverse.get;
        return v;
    endmethod
    method ActionValue#(WritePktGenData_Message) writePktGenData;
        let v <- inv_writePktGenData.inverse.get;
        return v;
    endmethod
    method ActionValue#(Pktgen_start_Message) pktgen_start;
        let v <- inv_pktgen_start.inverse.get;
        return v;
    endmethod
    method ActionValue#(Pktgen_stop_Message) pktgen_stop;
        let v <- inv_pktgen_stop.inverse.get;
        return v;
    endmethod
    method ActionValue#(Pktcap_start_Message) pktcap_start;
        let v <- inv_pktcap_start.inverse.get;
        return v;
    endmethod
    method ActionValue#(Pktcap_stop_Message) pktcap_stop;
        let v <- inv_pktcap_stop.inverse.get;
        return v;
    endmethod
    method ActionValue#(WriteMetaGenData_Message) writeMetaGenData;
        let v <- inv_writeMetaGenData.inverse.get;
        return v;
    endmethod
    method ActionValue#(Metagen_start_Message) metagen_start;
        let v <- inv_metagen_start.inverse.get;
        return v;
    endmethod
    method ActionValue#(Metagen_stop_Message) metagen_stop;
        let v <- inv_metagen_stop.inverse.get;
        return v;
    endmethod
    method ActionValue#(Read_pktcap_perf_info_Message) read_pktcap_perf_info;
        let v <- inv_read_pktcap_perf_info.inverse.get;
        return v;
    endmethod
    endinterface
endmodule

// synthesizeable proxy MemPortal
(* synthesize *)
module mkMainRequestProxySynth#(Bit#(SlaveDataBusWidth) id)(MainRequestProxy);
  let dut <- mkMainRequestOutput();
  PortalCtrlMemSlave#(SlaveControlAddrWidth,SlaveDataBusWidth) ctrlPort <- mkPortalCtrlMemSlave(id, dut.portalIfc.intr);
  let memslave  <- mkMemMethodMuxOut(ctrlPort.memSlave,dut.portalIfc.indications);
  interface MemPortal portalIfc = (interface MemPortal;
      interface PhysMemSlave slave = memslave;
      interface ReadOnly interrupt = ctrlPort.interrupt;
      interface WriteOnly num_portals = ctrlPort.num_portals;
    endinterface);
  interface MainAPI::MainRequest ifc = dut.ifc;
endmodule

// exposed proxy MemPortal
module mkMainRequestProxy#(idType id)(MainRequestProxy)
   provisos (Bits#(idType, a__),
	     Add#(b__, a__, SlaveDataBusWidth));
   let rv <- mkMainRequestProxySynth(extend(pack(id)));
   return rv;
endmodule
endpackage: MainRequest
