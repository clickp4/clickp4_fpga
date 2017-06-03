import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) nhop_ipv4;
} ModuleL3SwitchForwardTableReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleL3SwitchForwardTableReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleL3SwitchForwardTableRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) dst_addr;
} ModuleL3SwitchIpv4NhopReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleL3SwitchIpv4NhopReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} ModuleL3SwitchIpv4NhopRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(9) egress_spec;
} ModuleL3SwitchSendFrameReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleL3SwitchSendFrameReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} ModuleL3SwitchSendFrameRspT deriving (Bits, FShow);
