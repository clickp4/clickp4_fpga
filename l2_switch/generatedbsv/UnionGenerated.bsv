import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(9) _port;
    } FowardReqT;
    struct {
        Bit#(0) unused;
    } NoAction1ReqT;
} ModuleL2SwitchDmacParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(32) _receiver;
    } MaclearnReqT;
    struct {
        Bit#(0) unused;
    } NoAction2ReqT;
} ModuleL2SwitchSmacParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
