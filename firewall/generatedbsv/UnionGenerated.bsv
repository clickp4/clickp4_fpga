import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(0) unused;
    } Block0ReqT;
    struct {
        Bit#(0) unused;
    } Nop0ReqT;
    struct {
        Bit#(0) unused;
    } NoAction1ReqT;
} ModuleFirewallFirewallWithTcpParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(0) unused;
    } Block1ReqT;
    struct {
        Bit#(0) unused;
    } Nop1ReqT;
    struct {
        Bit#(0) unused;
    } NoAction2ReqT;
} ModuleFirewallFirewallWithUdpParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
