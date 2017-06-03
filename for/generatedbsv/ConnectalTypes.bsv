import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleForForEndReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleForForEndReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleForForEndRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleForForInitReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleForForInitReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleForForInitRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleForForLoopReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleForForLoopReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleForForLoopRspT deriving (Bits, FShow);
