import DefaultValue::*;
typedef struct{
    Bit#(6) padding;
    Bit#(48) dst_addr;
} ModuleL2SwitchDmacReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleL2SwitchDmacReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
    Bit#(9) _port;
} ModuleL2SwitchDmacRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(6) padding;
    Bit#(48) src_addr;
} ModuleL2SwitchSmacReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleL2SwitchSmacReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
    Bit#(32) _receiver;
} ModuleL2SwitchSmacRspT deriving (Bits, FShow);
