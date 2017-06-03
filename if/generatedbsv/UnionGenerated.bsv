import Ethernet::*;
import StructDefines::*;
typedef union tagged {
    struct {
        Bit#(8) _state;
        Bit#(64) _bitmap;
    } IfBranch0ReqT;
    struct {
        Bit#(0) unused;
    } NoAction1ReqT;
} ModuleIfIfEqualParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(8) _state;
        Bit#(64) _bitmap;
    } IfBranch1ReqT;
    struct {
        Bit#(0) unused;
    } NoAction2ReqT;
} ModuleIfIfLargeParam deriving (Bits, Eq, FShow);
typedef union tagged {
    struct {
        Bit#(8) _state;
        Bit#(64) _bitmap;
    } IfBranch2ReqT;
    struct {
        Bit#(0) unused;
    } NoAction3ReqT;
} ModuleIfIfSmallParam deriving (Bits, Eq, FShow);
import Ethernet::*;
import StructDefines::*;
