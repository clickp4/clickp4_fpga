import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleWhileWhileEqualReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleWhileWhileEqualReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} ModuleWhileWhileEqualRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(8) padding;
    Bit#(32) src_addr;
    Bit#(32) dst_addr;
} ModuleWhileWhileInitReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleWhileWhileInitReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleWhileWhileInitRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleWhileWhileLargeReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleWhileWhileLargeReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} ModuleWhileWhileLargeRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleWhileWhileSmallReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleWhileWhileSmallReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} ModuleWhileWhileSmallRspT deriving (Bits, FShow);
