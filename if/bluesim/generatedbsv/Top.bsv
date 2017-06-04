
import ConnectalConfig::*;
import Vector::*;
import BuildVector::*;
import Portal::*;
import CnocPortal::*;
import Connectable::*;
import HostInterface::*;
import MemTypes::*;
`include "ConnectalProjectConfig.bsv"
import IfcNames::*;
import `PinTypeInclude::*;
import MainIndication::*;
import Main::*;
import MemServerIndication::*;
import Main::*;
import MainRequest::*;

typedef 1 NumberOfRequests;
typedef 2 NumberOfIndications;

`ifndef IMPORT_HOSTIF
(* synthesize *)
`endif
module mkCnocTop
`ifdef IMPORT_HOSTIF
       #(HostInterface host)
`else
`ifdef IMPORT_HOST_CLOCKS // enables synthesis boundary
       #(Clock derivedClockIn, Reset derivedResetIn)
`else
// otherwise no params
`endif
`endif
       (CnocTop#(NumberOfRequests,NumberOfIndications,PhysAddrWidth,DataBusWidth,`PinType,NumberOfMasters));
   Clock defaultClock <- exposeCurrentClock();
   Reset defaultReset <- exposeCurrentReset();
`ifdef IMPORT_HOST_CLOCKS // enables synthesis boundary
   HostInterface host = (interface HostInterface;
                           interface Clock derivedClock = derivedClockIn;
                           interface Reset derivedReset = derivedResetIn;
                         endinterface);
`endif
   MainIndicationOutput lMainIndicationOutput <- mkMainIndicationOutput;
   MainRequestInput lMainRequestInput <- mkMainRequestInput;
   MemServerIndicationOutput lMemServerIndicationOutput <- mkMemServerIndicationOutput;

   let lMain <- mkMain(host, lMainIndicationOutput.ifc,lMemServerIndicationOutput.ifc);

   mkConnection(lMainRequestInput.pipes, lMain.request);

   let lMainIndicationOutputNoc <- mkPortalMsgIndication(extend(pack(IfcNames_MainIndicationH2S)), lMainIndicationOutput.portalIfc.indications, lMainIndicationOutput.portalIfc.messageSize);
   let lMemServerIndicationOutputNoc <- mkPortalMsgIndication(extend(pack(IfcNames_MemServerIndicationH2S)), lMemServerIndicationOutput.portalIfc.indications, lMemServerIndicationOutput.portalIfc.messageSize);
   let lMainRequestInputNoc <- mkPortalMsgRequest(extend(pack(IfcNames_MainRequestS2H)), lMainRequestInput.portalIfc.requests);
   Vector#(NumWriteClients,MemWriteClient#(DataBusWidth)) nullWriters = replicate(null_mem_write_client());
   Vector#(NumReadClients,MemReadClient#(DataBusWidth)) nullReaders = replicate(null_mem_read_client());

   interface requests = vec(lMainRequestInputNoc);
   interface indications = vec(lMainIndicationOutputNoc, lMemServerIndicationOutputNoc);
   interface readers = take(nullReaders);
   interface writers = take(nullWriters);
`ifdef TOP_SOURCES_PORTAL_CLOCK
   interface portalClockSource = None;
`endif


endmodule : mkCnocTop
export mkCnocTop;
export NumberOfRequests;
export NumberOfIndications;
export `PinTypeInclude::*;
