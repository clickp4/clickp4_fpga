import DefaultValue::*;
typedef struct{
    Bit#(3) padding;
    Bit#(32) src_addr;
    Bit#(32) dst_addr;
    Bit#(16) src_port;
    Bit#(16) dst_port;
} ModuleFirewallFirewallWithTcpReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleFirewallFirewallWithTcpReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} ModuleFirewallFirewallWithTcpRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(3) padding;
    Bit#(32) src_addr;
    Bit#(32) dst_addr;
    Bit#(16) src_port;
    Bit#(16) dst_port;
} ModuleFirewallFirewallWithUdpReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleFirewallFirewallWithUdpReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} ModuleFirewallFirewallWithUdpRspT deriving (Bits, FShow);
