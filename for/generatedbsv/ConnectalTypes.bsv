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
import DefaultValue::*;
typedef struct{
    Bit#(32) src_addr;
    Bit#(32) dst_addr;
    Bit#(8) proto;
} PipelineStartTblPipelineStartReqT deriving (Bits, FShow);
instance DefaultValue#(PipelineStartTblPipelineStartReqT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(2) _action;
} PipelineStartTblPipelineStartRspT deriving (Bits, FShow);
