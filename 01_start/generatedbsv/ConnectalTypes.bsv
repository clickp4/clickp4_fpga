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
    Bit#(1) _action;
    Bit#(32) _chain_id;
    Bit#(64) _bitmap;
} PipelineStartTblPipelineStartRspT deriving (Bits, FShow);
