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
