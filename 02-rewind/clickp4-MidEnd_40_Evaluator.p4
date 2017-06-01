/* 
<P4Program>(155017)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <Declaration_MatchKind>(150)
  <Declaration_MatchKind>(156)
  <Type_Struct>(155114)
  <Type_Extern>(339)
  <Type_Enum>(347)
  <Type_Enum>(353)
  <Type_Extern>(384)
  <Type_Extern>(410)
  <Type_Extern>(448)
  <Type_Extern>(480)
  <Type_Extern>(529)
  <Type_Extern>(547)
  <Type_Enum>(592)
  <Type_Extern>(652)
  <Method>(674)
  <Type_Parser>(756)
  <Type_Control>(773)
  <Type_Control>(799)
  <Type_Control>(825)
  <Type_Control>(842)
  <Type_Control>(864)
  <Type_Package>(927)
  <Type_Struct>(1039)
  <Type_Struct>(994)
  <Type_Struct>(1122)
  <Type_Header>(1524)
  <Type_Header>(1454)
  <Type_Header>(1336)
  <Type_Header>(1260)
  <Type_Header>(1173)
  <Type_Struct>(155642)
  <Type_Struct>(155668)
  <P4Parser>(155710)
  <Type_Struct>(139681)
  <P4Control>(155903)
  <P4Control>(6521)
  <P4Control>(156086)
  <P4Control>(6607)
  <P4Control>(6630)
  <Declaration_Instance>(156189) */
/* 
  <Type_Error>(18) */
#include <core.p4>
#include <v1model.p4>

/* 
  <Type_Struct>(1039) */
struct click_metadata_t {
/* 
    <StructField>(1013)
      <Annotations>(3)
      <Type_Bits>(1012) */
        bit<64> click_bitmap;
/* 
    <StructField>(1019)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> click_id;
/* 
    <StructField>(1025)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  click_state;
/* 
    <StructField>(1031)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  click_input;
}

/* 
  <Type_Struct>(994) */
struct intrinsic_metadata_t {
/* 
    <StructField>(956)
      <Annotations>(3)
      <Type_Bits>(257) */
        bit<48> ingress_global_timestamp;
/* 
    <StructField>(962)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  lf_field_list;
/* 
    <StructField>(968)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> mcast_grp;
/* 
    <StructField>(974)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> egress_rid;
/* 
    <StructField>(980)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  resubmit_flag;
/* 
    <StructField>(986)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  recirculate_flag;
}

/* 
  <Type_Struct>(1122) */
struct security_metadata_t {
/* 
    <StructField>(1095)
      <Annotations>(3)
      <Type_Bits>(188) */
        bit<1> ipsg_enabled;
/* 
    <StructField>(1101)
      <Annotations>(3)
      <Type_Bits>(188) */
        bit<1> ipsg_check_fail;
/* 
    <StructField>(1107)
      <Annotations>(3)
      <Type_Bits>(188) */
        bit<1> drop_flag;
/* 
    <StructField>(1114)
      <Annotations>(3)
      <Type_Bits>(1113) */
        bit<6> state;
}

/* 
  <Type_Header>(1524) */
header ethernet_t {
/* 
    <StructField>(1497)
      <Annotations>(3)
      <Type_Bits>(257) */
        bit<48> dst_addr;
/* 
    <StructField>(1503)
      <Annotations>(3)
      <Type_Bits>(257) */
        bit<48> src_addr;
/* 
    <StructField>(1509)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> eth_type;
}

/* 
  <Type_Header>(1454) */
header ipv4_t {
/* 
    <StructField>(1371)
      <Annotations>(3)
      <Type_Bits>(1214) */
        bit<4>  version;
/* 
    <StructField>(1377)
      <Annotations>(3)
      <Type_Bits>(1214) */
        bit<4>  ihl;
/* 
    <StructField>(1383)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  diffserv;
/* 
    <StructField>(1389)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> total_len;
/* 
    <StructField>(1395)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> identification;
/* 
    <StructField>(1402)
      <Annotations>(3)
      <Type_Bits>(1401) */
        bit<3>  flags;
/* 
    <StructField>(1409)
      <Annotations>(3)
      <Type_Bits>(1408) */
        bit<13> frag_offset;
/* 
    <StructField>(1415)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  ttl;
/* 
    <StructField>(1421)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  proto;
/* 
    <StructField>(1427)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> checksum;
/* 
    <StructField>(1433)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> src_addr;
/* 
    <StructField>(1439)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> dst_addr;
}

/* 
  <Type_Header>(1336) */
header ipv6_t {
/* 
    <StructField>(1277)
      <Annotations>(3)
      <Type_Bits>(1214) */
        bit<4>   version;
/* 
    <StructField>(1283)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>   traffic_class;
/* 
    <StructField>(1290)
      <Annotations>(3)
      <Type_Bits>(1289) */
        bit<20>  flow_label;
/* 
    <StructField>(1296)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16>  payload_len;
/* 
    <StructField>(1302)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>   next_hdr;
/* 
    <StructField>(1308)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>   hop_limit;
/* 
    <StructField>(1315)
      <Annotations>(3)
      <Type_Bits>(1314) */
        bit<128> src_addr;
/* 
    <StructField>(1321)
      <Annotations>(3)
      <Type_Bits>(1314) */
        bit<128> dst_addr;
}

/* 
  <Type_Header>(1260) */
header tcp_t {
/* 
    <StructField>(1190)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> src_port;
/* 
    <StructField>(1196)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> dst_port;
/* 
    <StructField>(1202)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> seq_no;
/* 
    <StructField>(1208)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> ack_no;
/* 
    <StructField>(1215)
      <Annotations>(3)
      <Type_Bits>(1214) */
        bit<4>  data_offset;
/* 
    <StructField>(1221)
      <Annotations>(3)
      <Type_Bits>(1214) */
        bit<4>  res;
/* 
    <StructField>(1227)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  flags;
/* 
    <StructField>(1233)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> window;
/* 
    <StructField>(1239)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> checksum;
/* 
    <StructField>(1245)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> urgent_ptr;
}

/* 
  <Type_Header>(1173) */
header udp_t {
/* 
    <StructField>(1140)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> src_port;
/* 
    <StructField>(1146)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> dst_port;
/* 
    <StructField>(1152)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> length_;
/* 
    <StructField>(1158)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> checksum;
}

/* 
  <Type_Struct>(155642) */
struct metadata {
/* 
    <StructField>(155644)
      <Annotations>(155645)
      <Type_Name>(5200) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(155652)
      <Annotations>(155653)
      <Type_Name>(5209) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(155660)
      <Annotations>(155661)
      <Type_Name>(5218) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
}

/* 
  <Type_Struct>(155668) */
struct headers {
/* 
    <StructField>(155670)
      <Annotations>(155671)
      <Type_Name>(5229) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(155678)
      <Annotations>(155679)
      <Type_Name>(5238) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(155686)
      <Annotations>(155687)
      <Type_Name>(5247) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(155694)
      <Annotations>(155695)
      <Type_Name>(5256) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(155702)
      <Annotations>(155703)
      <Type_Name>(5265) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(155710) */
/* 
    <Type_Parser>(5295)
      <Annotations>(3)
      <TypeParameters>(5293)
      <ParameterList>(5273) */
parser ParserImpl(/* 
        <Parameter>(5277)
          <Annotations>(3)
          <Type_Name>(5276) */
packet_in packet, /* 
        <Parameter>(5280)
          <Annotations>(3)
          <Type_Name>(5279) */
out headers hdr, /* 
        <Parameter>(5285)
          <Annotations>(3)
          <Type_Name>(5284) */
inout metadata meta, /* 
        <Parameter>(5290)
          <Annotations>(3)
          <Type_Name>(5289) */
inout standard_metadata_t standard_metadata) {
    /* 
    <ParserState>(155732) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(155739)
        <MethodCallExpression>(155740)
          <Member>(155741)extract
            <PathExpression>(155742)
              packet
          <Vector<Type>>(22366), size=1
            <Type_Name>(22367)
              ethernet_t
          <Vector<Expression>>(155747), size=1
            <Member>(155748)ethernet
              <PathExpression>(155749)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(155751)
        <ListExpression>(155753)
          <Member>(155755)eth_type
            <Member>(155756)ethernet
              <PathExpression>(155757)
                hdr
        <SelectCase>(155758)
          <Constant>(5361) 2048
            <Type_Bits>(192)
          <PathExpression>(155760)
            parse_ipv4
        <SelectCase>(155762)
          <Constant>(5368) 34525
            <Type_Bits>(192)
          <PathExpression>(155764)
            parse_ipv6
        <SelectCase>(155766)
          <DefaultExpression>(155767)
          <PathExpression>(155768)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(155758)
          <Constant>(5361) 2048
            <Type_Bits>(192)
          <PathExpression>(155760)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(155762)
          <Constant>(5368) 34525
            <Type_Bits>(192)
          <PathExpression>(155764)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(155766)
          <DefaultExpression>(155767)
          <PathExpression>(155768)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(155770) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(155777)
        <MethodCallExpression>(155778)
          <Member>(155779)extract
            <PathExpression>(155780)
              packet
          <Vector<Type>>(22404), size=1
            <Type_Name>(22405)
              ipv4_t
          <Vector<Expression>>(155785), size=1
            <Member>(155786)ipv4
              <PathExpression>(155787)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(155788)
        <ListExpression>(155790)
          <Member>(155792)proto
            <Member>(155793)ipv4
              <PathExpression>(155794)
                hdr
        <SelectCase>(155795)
          <Constant>(5488) 6
            <Type_Bits>(939)
          <PathExpression>(155797)
            parse_tcp
        <SelectCase>(155799)
          <Constant>(5495) 17
            <Type_Bits>(939)
          <PathExpression>(155801)
            parse_udp
        <SelectCase>(155803)
          <DefaultExpression>(155804)
          <PathExpression>(155805)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(155795)
          <Constant>(5488) 6
            <Type_Bits>(939)
          <PathExpression>(155797)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(155799)
          <Constant>(5495) 17
            <Type_Bits>(939)
          <PathExpression>(155801)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(155803)
          <DefaultExpression>(155804)
          <PathExpression>(155805)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(155807) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(155814)
        <MethodCallExpression>(155815)
          <Member>(155816)extract
            <PathExpression>(155817)
              packet
          <Vector<Type>>(22442), size=1
            <Type_Name>(22443)
              ipv6_t
          <Vector<Expression>>(155822), size=1
            <Member>(155823)ipv6
              <PathExpression>(155824)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(155825)
        <ListExpression>(155827)
          <Member>(155829)next_hdr
            <Member>(155830)ipv6
              <PathExpression>(155831)
                hdr
        <SelectCase>(155832)
          <Constant>(5600) 17
            <Type_Bits>(939)
          <PathExpression>(155834)
            parse_udp
        <SelectCase>(155836)
          <DefaultExpression>(155837)
          <PathExpression>(155838)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(155832)
          <Constant>(5600) 17
            <Type_Bits>(939)
          <PathExpression>(155834)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(155836)
          <DefaultExpression>(155837)
          <PathExpression>(155838)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(155840) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(155847)
        <MethodCallExpression>(155848)
          <Member>(155849)extract
            <PathExpression>(155850)
              packet
          <Vector<Type>>(22476), size=1
            <Type_Name>(22477)
              tcp_t
          <Vector<Expression>>(155855), size=1
            <Member>(155856)tcp
              <PathExpression>(155857)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(155858)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(155860) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(155867)
        <MethodCallExpression>(155868)
          <Member>(155869)extract
            <PathExpression>(155870)
              packet
          <Vector<Type>>(22497), size=1
            <Type_Name>(22498)
              udp_t
          <Vector<Expression>>(155875), size=1
            <Member>(155876)udp
              <PathExpression>(155877)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(155878)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(155880) */
    @name("start") state start {
/* 
      <PathExpression>(155887)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <Type_Struct>(139681) */
struct tuple_0 {
/* 
    <StructField>(139659)
      <Annotations>(3)
      <Type_Bits>(172) */
        bit<9>               field;
/* 
    <StructField>(139660)
      <Annotations>(3)
      <Type_Bits>(172) */
        bit<9>               field_0;
/* 
    <StructField>(139670)
      <Annotations>(3)
      <Type_Name>(139668) */
        intrinsic_metadata_t field_1;
/* 
    <StructField>(139678)
      <Annotations>(3)
      <Type_Name>(139676) */
        click_metadata_t     field_2;
}

/* 
  <P4Control>(155903) */
/* 
    <Type_Control>(6073)
      <Annotations>(3)
      <TypeParameters>(6071)
      <ParameterList>(6054) */
control ingress(/* 
        <Parameter>(6058)
          <Annotations>(3)
          <Type_Name>(6057) */
inout headers hdr, /* 
        <Parameter>(6063)
          <Annotations>(3)
          <Type_Name>(6062) */
inout metadata meta, /* 
        <Parameter>(6068)
          <Annotations>(3)
          <Type_Name>(6067) */
inout standard_metadata_t standard_metadata) {
    /* 
    <P4Action>(155921)
      <Annotations>(155922)
      <ParameterList>(142)
      <BlockStatement>(62508) */
    @name("NoAction") action NoAction_0() /* 
      <BlockStatement>(62508) */
    {
    }
    /* 
    <P4Action>(155931)
      <Annotations>(155932)
      <ParameterList>(108663)
      <BlockStatement>(155941) */
    @name(".rewind") action _rewind(/* 
        <Parameter>(108669)
          <Annotations>(3)
          <Type_Bits>(939) */
bit<8> state, /* 
        <Parameter>(108674)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(155941) */
    {
        /* 
        <AssignmentStatement>(155943)
          <Member>(155944)click_state
            <Member>(155945)click_metadata
              <PathExpression>(155946)
                meta
          <PathExpression>(155948)
            state */
        meta.click_metadata.click_state = state;
        /* 
        <AssignmentStatement>(155950)
          <Member>(155951)click_bitmap
            <Member>(155952)click_metadata
              <PathExpression>(155953)
                meta
          <PathExpression>(155955)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
        /* 
        <AssignmentStatement>(155957)
          <Member>(155958)click_input
            <Member>(155959)click_metadata
              <PathExpression>(155960)
                meta
          <Constant>(56478) 0
            <Type_Bits>(939) */
        meta.click_metadata.click_input = 8w0;
        /* 
        <MethodCallStatement>(155963)
          <MethodCallExpression>(155964)
            <PathExpression>(155965)
              resubmit
            <Vector<Type>>(139655), size=1
              <Type_Name>(139683)
                tuple_0
            <Vector<Expression>>(155970), size=1
              <ListExpression>(155971)
                <Member>(155973)ingress_port
                  <PathExpression>(155974)
                    standard_metadata
                <Member>(155976)egress_spec
                  <PathExpression>(155977)
                    standard_metadata
                <Member>(155979)intrinsic_metadata
                  <PathExpression>(155980)
                    meta
                <Member>(155982)click_metadata
                  <PathExpression>(155983)
                    meta */
        resubmit<tuple_0>({ standard_metadata.ingress_port, standard_metadata.egress_spec, meta.intrinsic_metadata, meta.click_metadata });
    }
    /* 
    <P4Table>(155985)
      <Annotations>(155986)
      <TableProperties>(155991) */
    @name("pipeline_rewind.rewind_table") table pipeline_rewind_rewind_table_0 {
        /* 
        <Property>(155993) */
        actions = /* 
          <ActionList>(155994)
            <ActionListElement>(155996)
            <ActionListElement>(156002) */
        {
            /* 
            <ActionListElement>(155996)
              <Annotations>(3)
              <MethodCallExpression>(155997)
                <PathExpression>(155998)
                  _rewind/_rewind_0
                <Vector<Type>>(9189), size=0
                <Vector<Expression>>(121991), size=0 */
            _rewind();
            /* 
            <ActionListElement>(156002)
              <Annotations>(9195)
                <Annotation>(9192)
              <MethodCallExpression>(156007)
                <PathExpression>(156008)
                  NoAction_0/NoAction_1
                <Vector<Type>>(9199), size=0
                <Vector<Expression>>(122013), size=0 */
            @defaultonly NoAction_0();
        }
        /* 
        <Property>(156012) */
        key = /* 
          <Key>(156013)
            <KeyElement>(156015)
            <KeyElement>(156027) */
        {
/* 
              <KeyElement>(156015)
                <Annotations>(156016)
                <Member>(156021)click_id
                  <Member>(156022)click_metadata
                    <PathExpression>(156023)
                      meta
                <PathExpression>(156025)
                  exact */
                        meta.click_metadata.click_id   : exact @name("meta.click_metadata.click_id") ;
/* 
              <KeyElement>(156027)
                <Annotations>(156028)
                <Member>(156033)click_state
                  <Member>(156034)click_metadata
                    <PathExpression>(156023)
                      meta
                <PathExpression>(156035)
                  exact */
                        meta.click_metadata.click_state: exact @name("meta.click_metadata.click_state") ;
        }
        /* 
        <Property>(156037) */
        default_action = /* 
          <ExpressionValue>(156038)
            <MethodCallExpression>(156039)
              <PathExpression>(156040)
                NoAction_0/NoAction_1
              <Vector<Type>>(9222), size=0
              <Vector<Expression>>(9220), size=0 */
        NoAction_0();
    }
    apply /* 
    <BlockStatement>(156044) */
    {
        /* 
      <IfStatement>(156046) */
        if ((meta.click_metadata.click_bitmap & 64w2147483648) == 64w0) 
            /* 
        <IfStatement>(156054) */
            if (meta.click_metadata.click_id != 32w0) 
                /* 
          <MethodCallStatement>(156059)
            <MethodCallExpression>(156060)
              <Member>(156061)apply
                <PathExpression>(156062)
                  pipeline_rewind_rewind_table_0/pipeline_rewind_rewind_table
              <Vector<Type>>(6040), size=0
              <Vector<Expression>>(56720), size=0 */
                pipeline_rewind_rewind_table_0.apply();
    }
}

/* 
  <P4Control>(6521) */
/* 
    <Type_Control>(6518)
      <Annotations>(3)
      <TypeParameters>(6516)
      <ParameterList>(6499) */
control egress(/* 
        <Parameter>(6503)
          <Annotations>(3)
          <Type_Name>(6502) */
inout headers hdr, /* 
        <Parameter>(6508)
          <Annotations>(3)
          <Type_Name>(6507) */
inout metadata meta, /* 
        <Parameter>(6513)
          <Annotations>(3)
          <Type_Name>(6512) */
inout standard_metadata_t standard_metadata) {
    apply /* 
    <BlockStatement>(6519) */
    {
    }
}

/* 
  <P4Control>(156086) */
/* 
    <Type_Control>(6544)
      <Annotations>(3)
      <TypeParameters>(6545)
      <ParameterList>(6537) */
control DeparserImpl(/* 
        <Parameter>(6541)
          <Annotations>(3)
          <Type_Name>(6540) */
packet_out packet, /* 
        <Parameter>(6527)
          <Annotations>(3)
          <Type_Name>(6526) */
in headers hdr) {
    apply /* 
    <BlockStatement>(156101) */
    {
        /* 
      <MethodCallStatement>(156103)
        <MethodCallExpression>(156104)
          <Member>(156105)emit
            <PathExpression>(156106)
              packet
          <Vector<Type>>(22943), size=1
            <Type_Name>(22944)
              ethernet_t
          <Vector<Expression>>(156111), size=1
            <Member>(156112)ethernet
              <PathExpression>(156113)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(156115)
        <MethodCallExpression>(156116)
          <Member>(156117)emit
            <PathExpression>(156118)
              packet
          <Vector<Type>>(22954), size=1
            <Type_Name>(22955)
              ipv6_t
          <Vector<Expression>>(156123), size=1
            <Member>(156124)ipv6
              <PathExpression>(156113)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(156125)
        <MethodCallExpression>(156126)
          <Member>(156127)emit
            <PathExpression>(156128)
              packet
          <Vector<Type>>(22965), size=1
            <Type_Name>(22966)
              ipv4_t
          <Vector<Expression>>(156133), size=1
            <Member>(156134)ipv4
              <PathExpression>(156113)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(156135)
        <MethodCallExpression>(156136)
          <Member>(156137)emit
            <PathExpression>(156138)
              packet
          <Vector<Type>>(22976), size=1
            <Type_Name>(22977)
              udp_t
          <Vector<Expression>>(156143), size=1
            <Member>(156144)udp
              <PathExpression>(156113)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(156145)
        <MethodCallExpression>(156146)
          <Member>(156147)emit
            <PathExpression>(156148)
              packet
          <Vector<Type>>(22987), size=1
            <Type_Name>(22988)
              tcp_t
          <Vector<Expression>>(156153), size=1
            <Member>(156154)tcp
              <PathExpression>(156113)
                hdr */
        packet.emit<tcp_t>(hdr.tcp);
    }
}

/* 
  <P4Control>(6607) */
/* 
    <Type_Control>(6600)
      <Annotations>(3)
      <TypeParameters>(6601)
      <ParameterList>(6588) */
control verifyChecksum(/* 
        <Parameter>(6592)
          <Annotations>(3)
          <Type_Name>(6591) */
in headers hdr, /* 
        <Parameter>(6597)
          <Annotations>(3)
          <Type_Name>(6596) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(6604) */
    {
    }
}

/* 
  <P4Control>(6630) */
/* 
    <Type_Control>(6623)
      <Annotations>(3)
      <TypeParameters>(6624)
      <ParameterList>(6611) */
control computeChecksum(/* 
        <Parameter>(6615)
          <Annotations>(3)
          <Type_Name>(6614) */
inout headers hdr, /* 
        <Parameter>(6620)
          <Annotations>(3)
          <Type_Name>(6619) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(6627) */
    {
    }
}

/* 
  <Declaration_Instance>(156189)
    <Annotations>(3)
    <Type_Specialized>(23053)
      <Type_Name>(6635)
      <Vector<Type>>(23048), size=2
    <Vector<Expression>>(156199), size=6
      <ConstructorCallExpression>(156200)
        <Type_Name>(6639)
          ParserImpl
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(156204)
        <Type_Name>(6642)
          verifyChecksum
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(156207)
        <Type_Name>(6645)
          ingress
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(156210)
        <Type_Name>(6648)
          egress
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(156213)
        <Type_Name>(6651)
          computeChecksum
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(156216)
        <Type_Name>(6654)
          DeparserImpl
        <Vector<Expression>>(6637), size=0 */
/* 
    <Type_Specialized>(169779)
      <Type_Name>(6635)
        V1Switch
      <Vector<Type>>(169778), size=2
        <Type_Name>(23049)
        <Type_Name>(23051) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
