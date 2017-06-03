import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleIfIfEqualReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleIfIfEqualReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleIfIfEqualRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleIfIfLargeReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleIfIfLargeReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleIfIfLargeRspT deriving (Bits, FShow);
import DefaultValue::*;
typedef struct{
    Bit#(4) padding;
    Bit#(32) click_id;
} ModuleIfIfSmallReqT deriving (Bits, FShow);
instance DefaultValue#(ModuleIfIfSmallReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} ModuleIfIfSmallRspT deriving (Bits, FShow);
