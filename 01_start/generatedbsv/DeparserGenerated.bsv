`ifdef DEPARSER_STRUCT
typedef enum {
    StateDeparseStart,
} DeparserState deriving (Bits, Eq, FShow);
`endif  // DEPARSER_STRUCT
`ifdef DEPARSER_RULES
Vector#(0, Rules) fsmRules = toVector(deparse_fsm);
`endif  // DEPARSER_RULES
`ifdef DEPARSER_STATE

function Bit#(1) nextDeparseState(MetadataT metadata);
    Vector#(1, Bool) headerValid;
    headerValid[0] = False;
    let vec = pack(headerValid);
    return vec;
endfunction

function Action transit_next_state(MetadataT metadata);
    action
    let vec = nextDeparseState(metadata);
    if (vec == 0) begin
        header_done <= True;
    end
    else begin
        Bit#(0) nextHeader = truncate(pack(countZerosLSB(vec)% 1));
        DeparserState nextState = unpack(nextHeader);
        case (nextState) matches
            default: $display("ERROR: unknown states.");
        endcase
    end
    endaction
endfunction
function MetadataT update_metadata(DeparserState state);
    let metadata = rg_metadata;
    case (state) matches
    endcase
    return metadata;
endfunction
let initState = StateDeparseStart;
`endif  // DEPARSER_STATE
