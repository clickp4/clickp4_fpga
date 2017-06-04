import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(8) _state;
        Bit#(64) _bitmap;
    } LoopEndReqT;
    struct {
        Bit#(0) unused;
    } NoAction1ReqT;
} ModuleForForEndParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(32) _threshold;
    } ForInitReqT;
    struct {
        Bit#(0) unused;
    } NoAction2ReqT;
} ModuleForForInitParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(64) _bitmap;
    } ForLoopReqT;
    struct {
        Bit#(0) unused;
    } NoAction3ReqT;
} ModuleForForLoopParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
