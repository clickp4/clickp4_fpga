typedef struct {
    Bit#(48) dst_addr;
    Bit#(48) src_addr;
    Bit#(16) eth_type;
} EthernetT deriving (Bits, Eq, FShow);
function EthernetT extract_ethernet_t(Bit#(112) data);
    return unpack(byteSwap(data));
endfunction
typedef struct {
    Bit#(4) version;
    Bit#(4) ihl;
    Bit#(8) diffserv;
    Bit#(16) total_len;
    Bit#(16) identification;
    Bit#(3) flags;
    Bit#(13) frag_offset;
    Bit#(8) ttl;
    Bit#(8) proto;
    Bit#(16) checksum;
    Bit#(32) src_addr;
    Bit#(32) dst_addr;
} Ipv4T deriving (Bits, Eq, FShow);
function Ipv4T extract_ipv4_t(Bit#(160) data);
    return unpack(byteSwap(data));
endfunction
typedef struct {
    Bit#(4) version;
    Bit#(8) traffic_class;
    Bit#(20) flow_label;
    Bit#(16) payload_len;
    Bit#(8) next_hdr;
    Bit#(8) hop_limit;
    Vector#(2, Bit#(64)) src_addr;
    Vector#(2, Bit#(64)) dst_addr;
} Ipv6T deriving (Bits, Eq, FShow);
function Ipv6T extract_ipv6_t(Bit#(320) data);
    return unpack(byteSwap(data));
endfunction
typedef struct {
    Bit#(16) src_port;
    Bit#(16) dst_port;
    Bit#(32) seq_no;
    Bit#(32) ack_no;
    Bit#(4) data_offset;
    Bit#(4) res;
    Bit#(8) flags;
    Bit#(16) window;
    Bit#(16) checksum;
    Bit#(16) urgent_ptr;
} TcpT deriving (Bits, Eq, FShow);
function TcpT extract_tcp_t(Bit#(160) data);
    return unpack(byteSwap(data));
endfunction
typedef struct {
    Bit#(16) src_port;
    Bit#(16) dst_port;
    Bit#(16) length_;
    Bit#(16) checksum;
} UdpT deriving (Bits, Eq, FShow);
function UdpT extract_udp_t(Bit#(64) data);
    return unpack(byteSwap(data));
endfunction
typedef struct {
    Bit#(64) click_bitmap;
    Bit#(32) click_id;
    Bit#(8) click_state;
    Bit#(8) click_input;
} ClickMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(ClickMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(32) condition;
} ConditionMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(ConditionMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(32) i;
    Bit#(32) threshold;
} ForMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(ForMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(32) left;
    Bit#(32) right;
} IfMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(IfMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(48) ingress_global_timestamp;
    Bit#(8) lf_field_list;
    Bit#(16) mcast_grp;
    Bit#(16) egress_rid;
    Bit#(8) resubmit_flag;
    Bit#(8) recirculate_flag;
} IntrinsicMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(IntrinsicMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(32) nhop_ipv4;
} L3SwitchMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(L3SwitchMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(1) ipsg_enabled;
    Bit#(1) ipsg_check_fail;
    Bit#(1) drop_flag;
    Bit#(6) state;
} SecurityMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(SecurityMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Bit#(32) value;
    Bit#(32) threshold;
} WhileMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(WhileMetadataT);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Maybe#(Header#(EthernetT)) ethernet;
    Maybe#(Header#(Ipv4T)) ipv4;
    Maybe#(Header#(Ipv6T)) ipv6;
    Maybe#(Header#(TcpT)) tcp;
    Maybe#(Header#(UdpT)) udp;
} Headers deriving (Bits, Eq, FShow);
typedef struct {
    Maybe#(Bit#(9)) egress_spec;
    Maybe#(Bit#(8)) proto;
    Maybe#(Bit#(32)) nhop_ipv4;
    Maybe#(Bit#(32)) dst_addr;
    Maybe#(Bit#(32)) src_addr;
    Maybe#(ClickMetadataT) click_metadata;
    Maybe#(ConditionMetadataT) condition_metadata;
    Maybe#(ForMetadataT) for_metadata;
    Maybe#(IfMetadataT) if_metadata;
    Maybe#(IntrinsicMetadataT) intrinsic_metadata;
    Maybe#(L3SwitchMetadataT) l3_switch_metadata;
    Maybe#(SecurityMetadataT) security_metadata;
    Maybe#(WhileMetadataT) while_metadata;
} Metadata deriving (Bits, Eq, FShow);
instance DefaultValue#(Metadata);
    defaultValue = unpack(0);
endinstance
typedef struct {
    Maybe#(Bit#(9)) ingress_port;
    Maybe#(Bit#(9)) egress_spec;
    Maybe#(Bit#(9)) egress_port;
    Maybe#(Bit#(32)) clone_spec;
    Maybe#(Bit#(32)) instance_type;
    Maybe#(Bit#(1)) drop;
    Maybe#(Bit#(16)) recirculate_port;
    Maybe#(Bit#(32)) packet_length;
    Maybe#(Bit#(32)) enq_timestamp;
    Maybe#(Bit#(19)) enq_qdepth;
    Maybe#(Bit#(32)) deq_timedelta;
    Maybe#(Bit#(19)) deq_qdepth;
    Maybe#(Bit#(48)) ingress_global_timestamp;
    Maybe#(Bit#(32)) lf_field_list;
    Maybe#(Bit#(16)) mcast_grp;
    Maybe#(Bit#(1)) resubmit_flag;
    Maybe#(Bit#(16)) egress_rid;
} StandardMetadataT deriving (Bits, Eq, FShow);
instance DefaultValue#(StandardMetadataT);
    defaultValue = unpack(0);
endinstance
