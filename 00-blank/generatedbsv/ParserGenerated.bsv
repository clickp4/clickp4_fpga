`ifdef PARSER_STRUCT
typedef enum {
    StateParseEthernet,
    StateParseIpv4,
    StateParseIpv6,
    StateParseTcp,
    StateParseUdp,
    StateStart,
    StateAccept,
    StateReject
} ParserState deriving (Bits, Eq);
`endif
`ifdef PARSER_FUNCTION
function Action compute_next_state_parse_ethernet(Bit#(16) eth_type);
    action
    let v = {eth_type};
    case(v) matches
        2048: begin
            w_parse_ethernet_parse_ipv4.send();
        end
        34525: begin
            w_parse_ethernet_parse_ipv6.send();
        end
        default: begin
            w_parse_ethernet_accept.send();
        end
    endcase
    endaction
endfunction
`endif
`ifdef PARSER_FUNCTION
function Action compute_next_state_parse_ipv4(Bit#(8) proto);
    action
    let v = {proto};
    case(v) matches
        6: begin
            w_parse_ipv4_parse_tcp.send();
        end
        17: begin
            w_parse_ipv4_parse_udp.send();
        end
        default: begin
            w_parse_ipv4_accept.send();
        end
    endcase
    endaction
endfunction
`endif
`ifdef PARSER_FUNCTION
function Action compute_next_state_parse_ipv6(Bit#(8) next_hdr);
    action
    let v = {next_hdr};
    case(v) matches
        17: begin
            w_parse_ipv6_parse_udp.send();
        end
        default: begin
            w_parse_ipv6_accept.send();
        end
    endcase
    endaction
endfunction
`endif
`ifdef PARSER_FUNCTION
function Action compute_next_state_parse_tcp();
    action
    w_parse_tcp_accept.send();
    endaction
endfunction
`endif
`ifdef PARSER_FUNCTION
function Action compute_next_state_parse_udp();
    action
    w_parse_udp_accept.send();
    endaction
endfunction
`endif
`ifdef PARSER_FUNCTION
function Action compute_next_state_start();
    action
    w_start_parse_ethernet.send();
    endaction
endfunction
`endif
`ifdef PARSER_FUNCTION
let initState = StateParseEthernet;
`endif
`ifdef PARSER_STRUCT
typedef 0 ParseEthernetSz;
typedef 0 ParseIpv4Sz;
typedef 0 ParseIpv6Sz;
typedef 0 ParseTcpSz;
typedef 0 ParseUdpSz;
`endif
`ifdef PARSER_FUNCTION
function Action extract_header(ParserState state, Bit#(512) data);
    action
    case (state) matches
        StateParseEthernet : begin
            let ethernet = extract_ethernet_t(truncate(data));
            Header#(EthernetT) header0 = defaultValue;
            header0.hdr = ethernet;
            header0.state = tagged Forward;
            ethernet_out_ff.enq(tagged Valid header0);
            compute_next_state_parse_ethernet(ethernet.eth_type);
        end
        StateParseIpv4 : begin
            let ipv4 = extract_ipv4_t(truncate(data));
            Header#(Ipv4T) header0 = defaultValue;
            header0.hdr = ipv4;
            header0.state = tagged Forward;
            ipv4_out_ff.enq(tagged Valid header0);
            compute_next_state_parse_ipv4(ipv4.proto);
        end
        StateParseIpv6 : begin
            let ipv6 = extract_ipv6_t(truncate(data));
            Header#(Ipv6T) header0 = defaultValue;
            header0.hdr = ipv6;
            header0.state = tagged Forward;
            ipv6_out_ff.enq(tagged Valid header0);
            compute_next_state_parse_ipv6(ipv6.next_hdr);
        end
        StateParseTcp : begin
            let tcp = extract_tcp_t(truncate(data));
            Header#(TcpT) header0 = defaultValue;
            header0.hdr = tcp;
            header0.state = tagged Forward;
            tcp_out_ff.enq(tagged Valid header0);
            compute_next_state_parse_tcp();
        end
        StateParseUdp : begin
            let udp = extract_udp_t(truncate(data));
            Header#(UdpT) header0 = defaultValue;
            header0.hdr = udp;
            header0.state = tagged Forward;
            udp_out_ff.enq(tagged Valid header0);
            compute_next_state_parse_udp();
        end
        StateStart : begin
        end
        StateAccept : begin
        end
        StateReject : begin
        end
    endcase
    endaction
endfunction
`endif
`ifdef PARSER_RULES
`COLLECT_RULE(parse_fsm, joinRules(vec(genLoadRule(StateParseEthernet, valueOf(ParseEthernetSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genExtractRule(StateParseEthernet, valueOf(ParseEthernetSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genContRule(w_parse_ethernet_parse_ipv4, StateParseIpv4, valueOf(ParseIpv4Sz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genContRule(w_parse_ethernet_parse_ipv6, StateParseIpv6, valueOf(ParseIpv6Sz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genAcceptRule(w_parse_ethernet_accept))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genLoadRule(StateParseIpv4, valueOf(ParseIpv4Sz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genExtractRule(StateParseIpv4, valueOf(ParseIpv4Sz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genContRule(w_parse_ipv4_parse_tcp, StateParseTcp, valueOf(ParseTcpSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genContRule(w_parse_ipv4_parse_udp, StateParseUdp, valueOf(ParseUdpSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genAcceptRule(w_parse_ipv4_accept))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genLoadRule(StateParseIpv6, valueOf(ParseIpv6Sz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genExtractRule(StateParseIpv6, valueOf(ParseIpv6Sz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genContRule(w_parse_ipv6_parse_udp, StateParseUdp, valueOf(ParseUdpSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genAcceptRule(w_parse_ipv6_accept))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genLoadRule(StateParseTcp, valueOf(ParseTcpSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genExtractRule(StateParseTcp, valueOf(ParseTcpSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genLoadRule(StateParseUdp, valueOf(ParseUdpSz)))));
`COLLECT_RULE(parse_fsm, joinRules(vec(genExtractRule(StateParseUdp, valueOf(ParseUdpSz)))));
Vector#(18, Rules) fsmRules = toVector(parse_fsm);
`endif
`ifdef PARSER_RULES
rule rl_accept if (delay_ff.notEmpty);
    delay_ff.deq;
    MetadataT meta = defaultValue;
    meta.meta.click_metadata = rg_click_metadata;
    meta.meta.intrinsic_metadata = rg_intrinsic_metadata;
    meta.meta.security_metadata = rg_security_metadata;
    let ethernet <- toGet(ethernet_out_ff).get;
    meta.hdr.ethernet = ethernet;
    let ipv4 <- toGet(ipv4_out_ff).get;
    meta.hdr.ipv4 = ipv4;
    let ipv6 <- toGet(ipv6_out_ff).get;
    meta.hdr.ipv6 = ipv6;
    let tcp <- toGet(tcp_out_ff).get;
    meta.hdr.tcp = tcp;
    let udp <- toGet(udp_out_ff).get;
    meta.hdr.udp = udp;
    rg_tmp[0] <= 0;
    rg_buffered[0] <= 0;
    meta_in_ff.enq(meta);
endrule
`endif
`ifdef PARSER_STATE
PulseWire w_parse_ethernet_parse_ipv4 <- mkPulseWire();
PulseWire w_parse_ethernet_parse_ipv6 <- mkPulseWire();
PulseWire w_parse_ethernet_accept <- mkPulseWire();
PulseWire w_parse_ipv4_parse_tcp <- mkPulseWire();
PulseWire w_parse_ipv4_parse_udp <- mkPulseWire();
PulseWire w_parse_ipv4_accept <- mkPulseWire();
PulseWire w_parse_ipv6_parse_udp <- mkPulseWire();
PulseWire w_parse_ipv6_accept <- mkPulseWire();
PulseWire w_parse_tcp_accept <- mkPulseWire();
PulseWire w_parse_udp_accept <- mkPulseWire();
PulseWire w_start_parse_ethernet <- mkPulseWire();
FIFOF#(Maybe#(Header#(EthernetT))) ethernet_out_ff <- mkDFIFOF(tagged Invalid);
FIFOF#(Maybe#(Header#(Ipv4T))) ipv4_out_ff <- mkDFIFOF(tagged Invalid);
FIFOF#(Maybe#(Header#(Ipv6T))) ipv6_out_ff <- mkDFIFOF(tagged Invalid);
FIFOF#(Maybe#(Header#(TcpT))) tcp_out_ff <- mkDFIFOF(tagged Invalid);
FIFOF#(Maybe#(Header#(UdpT))) udp_out_ff <- mkDFIFOF(tagged Invalid);
Reg#(Maybe#(ClickMetadataT)) rg_click_metadata <- mkReg(tagged Invalid);
Reg#(Maybe#(IntrinsicMetadataT)) rg_intrinsic_metadata <- mkReg(tagged Invalid);
Reg#(Maybe#(SecurityMetadataT)) rg_security_metadata <- mkReg(tagged Invalid);
`endif
