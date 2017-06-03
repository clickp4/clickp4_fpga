import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(48) _dmac;
        Bit#(9) _port;
    } SetDMacReqT;
    struct {
        Bit#(0) unused;
    } NoAction1ReqT;
} ModuleL3SwitchForwardTableParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(32) _nhop_ipv4;
    } SetNHopReqT;
    struct {
        Bit#(0) unused;
    } NoAction2ReqT;
} ModuleL3SwitchIpv4NhopParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(48) _smac;
    } SetSMacReqT;
    struct {
        Bit#(0) unused;
    } NoAction3ReqT;
} ModuleL3SwitchSendFrameParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
