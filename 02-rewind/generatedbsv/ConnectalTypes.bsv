import DefaultValue::*;
typedef struct{
    Bit#(5) padding;
    Bit#(32) click_id;
    Bit#(8) click_state;
} PipelineRewindRewindTableReqT deriving (Bits, FShow);
instance DefaultValue#(PipelineRewindRewindTableReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) _action;
} PipelineRewindRewindTableRspT deriving (Bits, FShow);
