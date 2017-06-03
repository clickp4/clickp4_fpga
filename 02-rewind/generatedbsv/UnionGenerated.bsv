import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(8) _state;
        Bit#(64) _bitmap;
    } RewindReqT;
    struct {
        Bit#(0) unused;
    } NoAction1ReqT;
} PipelineRewindRewindTableParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
