/* 
<P4Program>(120468)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <Declaration_MatchKind>(150)
  <Declaration_MatchKind>(156)
  <Type_Struct>(120565)
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
  <Type_Struct>(121083)
  <Type_Struct>(121109)
  <P4Parser>(121151)
  <P4Control>(101364)
  <P4Control>(6465)
  <P4Control>(121374)
  <P4Control>(6551)
  <P4Control>(6574)
  <Declaration_Instance>(121477) */
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
  <Type_Struct>(121083) */
struct metadata {
/* 
    <StructField>(121085)
      <Annotations>(121086)
      <Type_Name>(5180) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(121093)
      <Annotations>(121094)
      <Type_Name>(5189) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(121101)
      <Annotations>(121102)
      <Type_Name>(5198) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
}

/* 
  <Type_Struct>(121109) */
struct headers {
/* 
    <StructField>(121111)
      <Annotations>(121112)
      <Type_Name>(5209) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(121119)
      <Annotations>(121120)
      <Type_Name>(5218) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(121127)
      <Annotations>(121128)
      <Type_Name>(5227) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(121135)
      <Annotations>(121136)
      <Type_Name>(5236) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(121143)
      <Annotations>(121144)
      <Type_Name>(5245) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(121151) */
/* 
    <Type_Parser>(5275)
      <Annotations>(3)
      <TypeParameters>(5273)
      <ParameterList>(5253) */
parser ParserImpl(/* 
        <Parameter>(5257)
          <Annotations>(3)
          <Type_Name>(5256) */
packet_in packet, /* 
        <Parameter>(5260)
          <Annotations>(3)
          <Type_Name>(5259) */
out headers hdr, /* 
        <Parameter>(5265)
          <Annotations>(3)
          <Type_Name>(5264) */
inout metadata meta, /* 
        <Parameter>(5270)
          <Annotations>(3)
          <Type_Name>(5269) */
inout standard_metadata_t standard_metadata) {
    /* 
    <ParserState>(121173) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(121180)
        <MethodCallExpression>(121181)
          <Member>(121182)extract
            <PathExpression>(121183)
              packet
          <Vector<Type>>(21679), size=1
            <Type_Name>(21680)
              ethernet_t
          <Vector<Expression>>(121188), size=1
            <Member>(121189)ethernet
              <PathExpression>(121190)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(121192)
        <ListExpression>(121194)
          <Member>(121196)eth_type
            <Member>(121197)ethernet
              <PathExpression>(121198)
                hdr
        <SelectCase>(121199)
          <Constant>(5341) 2048
            <Type_Bits>(192)
          <PathExpression>(121201)
            parse_ipv4
        <SelectCase>(121203)
          <Constant>(5348) 34525
            <Type_Bits>(192)
          <PathExpression>(121205)
            parse_ipv6
        <SelectCase>(121207)
          <DefaultExpression>(121208)
          <PathExpression>(121209)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(121199)
          <Constant>(5341) 2048
            <Type_Bits>(192)
          <PathExpression>(121201)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(121203)
          <Constant>(5348) 34525
            <Type_Bits>(192)
          <PathExpression>(121205)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(121207)
          <DefaultExpression>(121208)
          <PathExpression>(121209)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(121211) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(121218)
        <MethodCallExpression>(121219)
          <Member>(121220)extract
            <PathExpression>(121221)
              packet
          <Vector<Type>>(21717), size=1
            <Type_Name>(21718)
              ipv4_t
          <Vector<Expression>>(121226), size=1
            <Member>(121227)ipv4
              <PathExpression>(121228)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(121229)
        <ListExpression>(121231)
          <Member>(121233)proto
            <Member>(121234)ipv4
              <PathExpression>(121235)
                hdr
        <SelectCase>(121236)
          <Constant>(5468) 6
            <Type_Bits>(939)
          <PathExpression>(121238)
            parse_tcp
        <SelectCase>(121240)
          <Constant>(5475) 17
            <Type_Bits>(939)
          <PathExpression>(121242)
            parse_udp
        <SelectCase>(121244)
          <DefaultExpression>(121245)
          <PathExpression>(121246)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(121236)
          <Constant>(5468) 6
            <Type_Bits>(939)
          <PathExpression>(121238)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(121240)
          <Constant>(5475) 17
            <Type_Bits>(939)
          <PathExpression>(121242)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(121244)
          <DefaultExpression>(121245)
          <PathExpression>(121246)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(121248) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(121255)
        <MethodCallExpression>(121256)
          <Member>(121257)extract
            <PathExpression>(121258)
              packet
          <Vector<Type>>(21755), size=1
            <Type_Name>(21756)
              ipv6_t
          <Vector<Expression>>(121263), size=1
            <Member>(121264)ipv6
              <PathExpression>(121265)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(121266)
        <ListExpression>(121268)
          <Member>(121270)next_hdr
            <Member>(121271)ipv6
              <PathExpression>(121272)
                hdr
        <SelectCase>(121273)
          <Constant>(5580) 17
            <Type_Bits>(939)
          <PathExpression>(121275)
            parse_udp
        <SelectCase>(121277)
          <DefaultExpression>(121278)
          <PathExpression>(121279)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(121273)
          <Constant>(5580) 17
            <Type_Bits>(939)
          <PathExpression>(121275)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(121277)
          <DefaultExpression>(121278)
          <PathExpression>(121279)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(121281) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(121288)
        <MethodCallExpression>(121289)
          <Member>(121290)extract
            <PathExpression>(121291)
              packet
          <Vector<Type>>(21789), size=1
            <Type_Name>(21790)
              tcp_t
          <Vector<Expression>>(121296), size=1
            <Member>(121297)tcp
              <PathExpression>(121298)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(121299)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(121301) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(121308)
        <MethodCallExpression>(121309)
          <Member>(121310)extract
            <PathExpression>(121311)
              packet
          <Vector<Type>>(21810), size=1
            <Type_Name>(21811)
              udp_t
          <Vector<Expression>>(121316), size=1
            <Member>(121317)udp
              <PathExpression>(121318)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(121319)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(121321) */
    @name("start") state start {
/* 
      <PathExpression>(121328)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <P4Control>(101364) */
/* 
    <Type_Control>(5780)
      <Annotations>(3)
      <TypeParameters>(5778)
      <ParameterList>(5761) */
control ingress(/* 
        <Parameter>(5765)
          <Annotations>(3)
          <Type_Name>(5764) */
inout headers hdr, /* 
        <Parameter>(5770)
          <Annotations>(3)
          <Type_Name>(5769) */
inout metadata meta, /* 
        <Parameter>(5775)
          <Annotations>(3)
          <Type_Name>(5774) */
inout standard_metadata_t standard_metadata) {
    apply /* 
    <BlockStatement>(101382) */
    {
    }
}

/* 
  <P4Control>(6465) */
/* 
    <Type_Control>(6462)
      <Annotations>(3)
      <TypeParameters>(6460)
      <ParameterList>(6443) */
control egress(/* 
        <Parameter>(6447)
          <Annotations>(3)
          <Type_Name>(6446) */
inout headers hdr, /* 
        <Parameter>(6452)
          <Annotations>(3)
          <Type_Name>(6451) */
inout metadata meta, /* 
        <Parameter>(6457)
          <Annotations>(3)
          <Type_Name>(6456) */
inout standard_metadata_t standard_metadata) {
    apply /* 
    <BlockStatement>(6463) */
    {
    }
}

/* 
  <P4Control>(121374) */
/* 
    <Type_Control>(6488)
      <Annotations>(3)
      <TypeParameters>(6489)
      <ParameterList>(6481) */
control DeparserImpl(/* 
        <Parameter>(6485)
          <Annotations>(3)
          <Type_Name>(6484) */
packet_out packet, /* 
        <Parameter>(6471)
          <Annotations>(3)
          <Type_Name>(6470) */
in headers hdr) {
    apply /* 
    <BlockStatement>(121389) */
    {
        /* 
      <MethodCallStatement>(121391)
        <MethodCallExpression>(121392)
          <Member>(121393)emit
            <PathExpression>(121394)
              packet
          <Vector<Type>>(22236), size=1
            <Type_Name>(22237)
              ethernet_t
          <Vector<Expression>>(121399), size=1
            <Member>(121400)ethernet
              <PathExpression>(121401)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(121403)
        <MethodCallExpression>(121404)
          <Member>(121405)emit
            <PathExpression>(121406)
              packet
          <Vector<Type>>(22247), size=1
            <Type_Name>(22248)
              ipv6_t
          <Vector<Expression>>(121411), size=1
            <Member>(121412)ipv6
              <PathExpression>(121401)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(121413)
        <MethodCallExpression>(121414)
          <Member>(121415)emit
            <PathExpression>(121416)
              packet
          <Vector<Type>>(22258), size=1
            <Type_Name>(22259)
              ipv4_t
          <Vector<Expression>>(121421), size=1
            <Member>(121422)ipv4
              <PathExpression>(121401)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(121423)
        <MethodCallExpression>(121424)
          <Member>(121425)emit
            <PathExpression>(121426)
              packet
          <Vector<Type>>(22269), size=1
            <Type_Name>(22270)
              udp_t
          <Vector<Expression>>(121431), size=1
            <Member>(121432)udp
              <PathExpression>(121401)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(121433)
        <MethodCallExpression>(121434)
          <Member>(121435)emit
            <PathExpression>(121436)
              packet
          <Vector<Type>>(22280), size=1
            <Type_Name>(22281)
              tcp_t
          <Vector<Expression>>(121441), size=1
            <Member>(121442)tcp
              <PathExpression>(121401)
                hdr */
        packet.emit<tcp_t>(hdr.tcp);
    }
}

/* 
  <P4Control>(6551) */
/* 
    <Type_Control>(6544)
      <Annotations>(3)
      <TypeParameters>(6545)
      <ParameterList>(6532) */
control verifyChecksum(/* 
        <Parameter>(6536)
          <Annotations>(3)
          <Type_Name>(6535) */
in headers hdr, /* 
        <Parameter>(6541)
          <Annotations>(3)
          <Type_Name>(6540) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(6548) */
    {
    }
}

/* 
  <P4Control>(6574) */
/* 
    <Type_Control>(6567)
      <Annotations>(3)
      <TypeParameters>(6568)
      <ParameterList>(6555) */
control computeChecksum(/* 
        <Parameter>(6559)
          <Annotations>(3)
          <Type_Name>(6558) */
inout headers hdr, /* 
        <Parameter>(6564)
          <Annotations>(3)
          <Type_Name>(6563) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(6571) */
    {
    }
}

/* 
  <Declaration_Instance>(121477)
    <Annotations>(3)
    <Type_Specialized>(22346)
      <Type_Name>(6579)
      <Vector<Type>>(22341), size=2
    <Vector<Expression>>(121487), size=6
      <ConstructorCallExpression>(121488)
        <Type_Name>(6583)
          ParserImpl
        <Vector<Expression>>(6581), size=0
      <ConstructorCallExpression>(121492)
        <Type_Name>(6586)
          verifyChecksum
        <Vector<Expression>>(6581), size=0
      <ConstructorCallExpression>(121495)
        <Type_Name>(6589)
          ingress
        <Vector<Expression>>(6581), size=0
      <ConstructorCallExpression>(121498)
        <Type_Name>(6592)
          egress
        <Vector<Expression>>(6581), size=0
      <ConstructorCallExpression>(121501)
        <Type_Name>(6595)
          computeChecksum
        <Vector<Expression>>(6581), size=0
      <ConstructorCallExpression>(121504)
        <Type_Name>(6598)
          DeparserImpl
        <Vector<Expression>>(6581), size=0 */
/* 
    <Type_Specialized>(133129)
      <Type_Name>(6579)
        V1Switch
      <Vector<Type>>(133128), size=2
        <Type_Name>(22342)
        <Type_Name>(22344) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
