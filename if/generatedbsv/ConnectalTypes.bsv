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
    Bit#(8) _state;
    Bit#(64) _bitmap;
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
    Bit#(8) _state;
    Bit#(64) _bitmap;
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
    Bit#(8) _state;
    Bit#(64) _bitmap;
} ModuleIfIfSmallRspT deriving (Bits, FShow);
