import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(32) _chain_id;
        Bit#(64) _bitmap;
    } ActSetChainReqT;
    struct {
        Bit#(0) unused;
    } NoAction1ReqT;
} PipelineStartTblPipelineStartParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
