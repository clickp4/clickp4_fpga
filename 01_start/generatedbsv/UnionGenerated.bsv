import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(32) _chainid; 
        Bit#(64) _bitmap;
    } ActSetChainReqT;
    struct {
        Bit#(64) _bitmap;
    } ActSetBitmapReqT;
    struct {
        Bit#(0) unused;
    } BoAction1ReqT;
} PipelineStartTblPipelineStartParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
