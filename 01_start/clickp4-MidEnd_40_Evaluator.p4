/* 
<P4Program>(142956)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <Declaration_MatchKind>(150)
  <Declaration_MatchKind>(156)
  <Type_Struct>(143053)
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
  <Type_Struct>(1244)
  <Type_Struct>(1186)
  <Type_Struct>(1218)
  <Type_Struct>(994)
  <Type_Struct>(1122)
  <Type_Struct>(1154)
  <Type_Header>(1700)
  <Type_Header>(1630)
  <Type_Header>(1512)
  <Type_Header>(1436)
  <Type_Header>(1349)
  <Type_Struct>(143594)
  <Type_Struct>(143652)
  <P4Parser>(143694)
  <P4Control>(143877)
  <P4Control>(7264)
  <P4Control>(144038)
  <P4Control>(7350)
  <P4Control>(7373)
  <Declaration_Instance>(144141) */
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
  <Type_Struct>(1244) */
struct condition_metadata_t {
/* 
    <StructField>(1236)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> condition;
}

/* 
  <Type_Struct>(1186) */
struct for_metadata_t {
/* 
    <StructField>(1172)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> i;
/* 
    <StructField>(1178)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> threshold;
}

/* 
  <Type_Struct>(1218) */
struct if_metadata_t {
/* 
    <StructField>(1204)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> left;
/* 
    <StructField>(1210)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> right;
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
  <Type_Struct>(1154) */
struct while_metadata_t {
/* 
    <StructField>(1140)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> value;
/* 
    <StructField>(1146)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> threshold;
}

/* 
  <Type_Header>(1700) */
header ethernet_t {
/* 
    <StructField>(1673)
      <Annotations>(3)
      <Type_Bits>(257) */
        bit<48> dst_addr;
/* 
    <StructField>(1679)
      <Annotations>(3)
      <Type_Bits>(257) */
        bit<48> src_addr;
/* 
    <StructField>(1685)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> eth_type;
}

/* 
  <Type_Header>(1630) */
header ipv4_t {
/* 
    <StructField>(1547)
      <Annotations>(3)
      <Type_Bits>(1390) */
        bit<4>  version;
/* 
    <StructField>(1553)
      <Annotations>(3)
      <Type_Bits>(1390) */
        bit<4>  ihl;
/* 
    <StructField>(1559)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  diffserv;
/* 
    <StructField>(1565)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> total_len;
/* 
    <StructField>(1571)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> identification;
/* 
    <StructField>(1578)
      <Annotations>(3)
      <Type_Bits>(1577) */
        bit<3>  flags;
/* 
    <StructField>(1585)
      <Annotations>(3)
      <Type_Bits>(1584) */
        bit<13> frag_offset;
/* 
    <StructField>(1591)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  ttl;
/* 
    <StructField>(1597)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  proto;
/* 
    <StructField>(1603)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> checksum;
/* 
    <StructField>(1609)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> src_addr;
/* 
    <StructField>(1615)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> dst_addr;
}

/* 
  <Type_Header>(1512) */
header ipv6_t {
/* 
    <StructField>(1453)
      <Annotations>(3)
      <Type_Bits>(1390) */
        bit<4>   version;
/* 
    <StructField>(1459)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>   traffic_class;
/* 
    <StructField>(1466)
      <Annotations>(3)
      <Type_Bits>(1465) */
        bit<20>  flow_label;
/* 
    <StructField>(1472)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16>  payload_len;
/* 
    <StructField>(1478)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>   next_hdr;
/* 
    <StructField>(1484)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>   hop_limit;
/* 
    <StructField>(1491)
      <Annotations>(3)
      <Type_Bits>(1490) */
        bit<128> src_addr;
/* 
    <StructField>(1497)
      <Annotations>(3)
      <Type_Bits>(1490) */
        bit<128> dst_addr;
}

/* 
  <Type_Header>(1436) */
header tcp_t {
/* 
    <StructField>(1366)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> src_port;
/* 
    <StructField>(1372)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> dst_port;
/* 
    <StructField>(1378)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> seq_no;
/* 
    <StructField>(1384)
      <Annotations>(3)
      <Type_Bits>(0) */
        bit<32> ack_no;
/* 
    <StructField>(1391)
      <Annotations>(3)
      <Type_Bits>(1390) */
        bit<4>  data_offset;
/* 
    <StructField>(1397)
      <Annotations>(3)
      <Type_Bits>(1390) */
        bit<4>  res;
/* 
    <StructField>(1403)
      <Annotations>(3)
      <Type_Bits>(939) */
        bit<8>  flags;
/* 
    <StructField>(1409)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> window;
/* 
    <StructField>(1415)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> checksum;
/* 
    <StructField>(1421)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> urgent_ptr;
}

/* 
  <Type_Header>(1349) */
header udp_t {
/* 
    <StructField>(1316)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> src_port;
/* 
    <StructField>(1322)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> dst_port;
/* 
    <StructField>(1328)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> length_;
/* 
    <StructField>(1334)
      <Annotations>(3)
      <Type_Bits>(192) */
        bit<16> checksum;
}

/* 
  <Type_Struct>(143594) */
struct metadata {
/* 
    <StructField>(143596)
      <Annotations>(143597)
      <Type_Name>(6040) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(143604)
      <Annotations>(143605)
      <Type_Name>(6049) */
        @name("condition_metadata") 
    condition_metadata_t condition_metadata;
/* 
    <StructField>(143612)
      <Annotations>(143613)
      <Type_Name>(6058) */
        @name("for_metadata") 
    for_metadata_t       for_metadata;
/* 
    <StructField>(143620)
      <Annotations>(143621)
      <Type_Name>(6067) */
        @name("if_metadata") 
    if_metadata_t        if_metadata;
/* 
    <StructField>(143628)
      <Annotations>(143629)
      <Type_Name>(6076) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(143636)
      <Annotations>(143637)
      <Type_Name>(6085) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
/* 
    <StructField>(143644)
      <Annotations>(143645)
      <Type_Name>(6094) */
        @name("while_metadata") 
    while_metadata_t     while_metadata;
}

/* 
  <Type_Struct>(143652) */
struct headers {
/* 
    <StructField>(143654)
      <Annotations>(143655)
      <Type_Name>(6105) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(143662)
      <Annotations>(143663)
      <Type_Name>(6114) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(143670)
      <Annotations>(143671)
      <Type_Name>(6123) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(143678)
      <Annotations>(143679)
      <Type_Name>(6132) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(143686)
      <Annotations>(143687)
      <Type_Name>(6141) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(143694) */
/* 
    <Type_Parser>(6171)
      <Annotations>(3)
      <TypeParameters>(6169)
      <ParameterList>(6149) */
parser ParserImpl(/* 
        <Parameter>(6153)
          <Annotations>(3)
          <Type_Name>(6152) */
packet_in packet, /* 
        <Parameter>(6156)
          <Annotations>(3)
          <Type_Name>(6155) */
out headers hdr, /* 
        <Parameter>(6161)
          <Annotations>(3)
          <Type_Name>(6160) */
inout metadata meta, /* 
        <Parameter>(6166)
          <Annotations>(3)
          <Type_Name>(6165) */
inout standard_metadata_t standard_metadata) {
    /* 
    <ParserState>(143716) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(143723)
        <MethodCallExpression>(143724)
          <Member>(143725)extract
            <PathExpression>(143726)
              packet
          <Vector<Type>>(22906), size=1
            <Type_Name>(22907)
              ethernet_t
          <Vector<Expression>>(143731), size=1
            <Member>(143732)ethernet
              <PathExpression>(143733)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(143735)
        <ListExpression>(143737)
          <Member>(143739)eth_type
            <Member>(143740)ethernet
              <PathExpression>(143741)
                hdr
        <SelectCase>(143742)
          <Constant>(6237) 2048
            <Type_Bits>(192)
          <PathExpression>(143744)
            parse_ipv4
        <SelectCase>(143746)
          <Constant>(6244) 34525
            <Type_Bits>(192)
          <PathExpression>(143748)
            parse_ipv6
        <SelectCase>(143750)
          <DefaultExpression>(143751)
          <PathExpression>(143752)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(143742)
          <Constant>(6237) 2048
            <Type_Bits>(192)
          <PathExpression>(143744)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(143746)
          <Constant>(6244) 34525
            <Type_Bits>(192)
          <PathExpression>(143748)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(143750)
          <DefaultExpression>(143751)
          <PathExpression>(143752)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(143754) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(143761)
        <MethodCallExpression>(143762)
          <Member>(143763)extract
            <PathExpression>(143764)
              packet
          <Vector<Type>>(22944), size=1
            <Type_Name>(22945)
              ipv4_t
          <Vector<Expression>>(143769), size=1
            <Member>(143770)ipv4
              <PathExpression>(143771)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(143772)
        <ListExpression>(143774)
          <Member>(143776)proto
            <Member>(143777)ipv4
              <PathExpression>(143778)
                hdr
        <SelectCase>(143779)
          <Constant>(6364) 6
            <Type_Bits>(939)
          <PathExpression>(143781)
            parse_tcp
        <SelectCase>(143783)
          <Constant>(6371) 17
            <Type_Bits>(939)
          <PathExpression>(143785)
            parse_udp
        <SelectCase>(143787)
          <DefaultExpression>(143788)
          <PathExpression>(143789)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(143779)
          <Constant>(6364) 6
            <Type_Bits>(939)
          <PathExpression>(143781)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(143783)
          <Constant>(6371) 17
            <Type_Bits>(939)
          <PathExpression>(143785)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(143787)
          <DefaultExpression>(143788)
          <PathExpression>(143789)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(143791) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(143798)
        <MethodCallExpression>(143799)
          <Member>(143800)extract
            <PathExpression>(143801)
              packet
          <Vector<Type>>(22982), size=1
            <Type_Name>(22983)
              ipv6_t
          <Vector<Expression>>(143806), size=1
            <Member>(143807)ipv6
              <PathExpression>(143808)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(143809)
        <ListExpression>(143811)
          <Member>(143813)next_hdr
            <Member>(143814)ipv6
              <PathExpression>(143815)
                hdr
        <SelectCase>(143816)
          <Constant>(6476) 17
            <Type_Bits>(939)
          <PathExpression>(143818)
            parse_udp
        <SelectCase>(143820)
          <DefaultExpression>(143821)
          <PathExpression>(143822)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(143816)
          <Constant>(6476) 17
            <Type_Bits>(939)
          <PathExpression>(143818)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(143820)
          <DefaultExpression>(143821)
          <PathExpression>(143822)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(143824) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(143831)
        <MethodCallExpression>(143832)
          <Member>(143833)extract
            <PathExpression>(143834)
              packet
          <Vector<Type>>(23016), size=1
            <Type_Name>(23017)
              tcp_t
          <Vector<Expression>>(143839), size=1
            <Member>(143840)tcp
              <PathExpression>(143841)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(143842)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(143844) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(143851)
        <MethodCallExpression>(143852)
          <Member>(143853)extract
            <PathExpression>(143854)
              packet
          <Vector<Type>>(23037), size=1
            <Type_Name>(23038)
              udp_t
          <Vector<Expression>>(143859), size=1
            <Member>(143860)udp
              <PathExpression>(143861)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(143862)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(143864) */
    @name("start") state start {
/* 
      <PathExpression>(143871)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <P4Control>(143877) */
/* 
    <Type_Control>(6862)
      <Annotations>(3)
      <TypeParameters>(6860)
      <ParameterList>(6843) */
control ingress(/* 
        <Parameter>(6847)
          <Annotations>(3)
          <Type_Name>(6846) */
inout headers hdr, /* 
        <Parameter>(6852)
          <Annotations>(3)
          <Type_Name>(6851) */
inout metadata meta, /* 
        <Parameter>(6857)
          <Annotations>(3)
          <Type_Name>(6856) */
inout standard_metadata_t standard_metadata) {
    /* 
    <P4Action>(143895)
      <Annotations>(143896)
      <ParameterList>(142)
      <BlockStatement>(61678) */
    @name("NoAction") action NoAction_0() /* 
      <BlockStatement>(61678) */
    {
    }
    /* 
    <P4Action>(143905)
      <Annotations>(143906)
      <ParameterList>(105774)
      <BlockStatement>(143915) */
    @name(".act_set_chain") action _act_set_chain(/* 
        <Parameter>(105780)
          <Annotations>(3)
          <Type_Bits>(0) */
bit<32> chain_id, /* 
        <Parameter>(105785)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(143915) */
    {
        /* 
        <AssignmentStatement>(143917)
          <Member>(143918)click_id
            <Member>(143919)click_metadata
              <PathExpression>(143920)
                meta
          <PathExpression>(143922)
            chain_id */
        meta.click_metadata.click_id = chain_id;
        /* 
        <AssignmentStatement>(143924)
          <Member>(143925)click_bitmap
            <Member>(143926)click_metadata
              <PathExpression>(143927)
                meta
          <PathExpression>(143929)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Table>(143931)
      <Annotations>(143932)
      <TableProperties>(143937) */
    @name("pipeline_start.tbl_pipeline_start") table pipeline_start_tbl_pipeline_start_0 {
        /* 
        <Property>(143939) */
        actions = /* 
          <ActionList>(143940)
            <ActionListElement>(143942)
            <ActionListElement>(143948) */
        {
            /* 
            <ActionListElement>(143942)
              <Annotations>(3)
              <MethodCallExpression>(143943)
                <PathExpression>(143944)
                  _act_set_chain/_act_set_chain_0
                <Vector<Type>>(9928), size=0
                <Vector<Expression>>(117326), size=0 */
            _act_set_chain();
            /* 
            <ActionListElement>(143948)
              <Annotations>(9934)
                <Annotation>(9931)
              <MethodCallExpression>(143953)
                <PathExpression>(143954)
                  NoAction_0/NoAction_1
                <Vector<Type>>(9938), size=0
                <Vector<Expression>>(117348), size=0 */
            @defaultonly NoAction_0();
        }
        /* 
        <Property>(143958) */
        key = /* 
          <Key>(143959)
            <KeyElement>(143961)
            <KeyElement>(143973)
            <KeyElement>(143983) */
        {
/* 
              <KeyElement>(143961)
                <Annotations>(143962)
                <Member>(143967)src_addr
                  <Member>(143968)ipv4
                    <PathExpression>(143969)
                      hdr
                <PathExpression>(143971)
                  ternary */
                        hdr.ipv4.src_addr: ternary @name("hdr.ipv4.src_addr") ;
/* 
              <KeyElement>(143973)
                <Annotations>(143974)
                <Member>(143979)dst_addr
                  <Member>(143980)ipv4
                    <PathExpression>(143969)
                      hdr
                <PathExpression>(143981)
                  ternary */
                        hdr.ipv4.dst_addr: ternary @name("hdr.ipv4.dst_addr") ;
/* 
              <KeyElement>(143983)
                <Annotations>(143984)
                <Member>(143989)proto
                  <Member>(143990)ipv4
                    <PathExpression>(143969)
                      hdr
                <PathExpression>(143991)
                  ternary */
                        hdr.ipv4.proto   : ternary @name("hdr.ipv4.proto") ;
        }
        /* 
        <Property>(143993) */
        default_action = /* 
          <ExpressionValue>(143994)
            <MethodCallExpression>(143995)
              <PathExpression>(143996)
                NoAction_0/NoAction_1
              <Vector<Type>>(9968), size=0
              <Vector<Expression>>(9966), size=0 */
        NoAction_0();
    }
    apply /* 
    <BlockStatement>(144000) */
    {
        /* 
      <IfStatement>(144002) */
        if ((meta.click_metadata.click_bitmap & 64w1) == 64w0) 
            /* 
        <MethodCallStatement>(144011)
          <MethodCallExpression>(144012)
            <Member>(144013)apply
              <PathExpression>(144014)
                pipeline_start_tbl_pipeline_start_0/pipeline_start_tbl_pipeline_start
            <Vector<Type>>(6834), size=0
            <Vector<Expression>>(56088), size=0 */
            pipeline_start_tbl_pipeline_start_0.apply();
    }
}

/* 
  <P4Control>(7264) */
/* 
    <Type_Control>(7261)
      <Annotations>(3)
      <TypeParameters>(7259)
      <ParameterList>(7242) */
control egress(/* 
        <Parameter>(7246)
          <Annotations>(3)
          <Type_Name>(7245) */
inout headers hdr, /* 
        <Parameter>(7251)
          <Annotations>(3)
          <Type_Name>(7250) */
inout metadata meta, /* 
        <Parameter>(7256)
          <Annotations>(3)
          <Type_Name>(7255) */
inout standard_metadata_t standard_metadata) {
    apply /* 
    <BlockStatement>(7262) */
    {
    }
}

/* 
  <P4Control>(144038) */
/* 
    <Type_Control>(7287)
      <Annotations>(3)
      <TypeParameters>(7288)
      <ParameterList>(7280) */
control DeparserImpl(/* 
        <Parameter>(7284)
          <Annotations>(3)
          <Type_Name>(7283) */
packet_out packet, /* 
        <Parameter>(7270)
          <Annotations>(3)
          <Type_Name>(7269) */
in headers hdr) {
    apply /* 
    <BlockStatement>(144053) */
    {
        /* 
      <MethodCallStatement>(144055)
        <MethodCallExpression>(144056)
          <Member>(144057)emit
            <PathExpression>(144058)
              packet
          <Vector<Type>>(23409), size=1
            <Type_Name>(23410)
              ethernet_t
          <Vector<Expression>>(144063), size=1
            <Member>(144064)ethernet
              <PathExpression>(144065)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(144067)
        <MethodCallExpression>(144068)
          <Member>(144069)emit
            <PathExpression>(144070)
              packet
          <Vector<Type>>(23420), size=1
            <Type_Name>(23421)
              ipv6_t
          <Vector<Expression>>(144075), size=1
            <Member>(144076)ipv6
              <PathExpression>(144065)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(144077)
        <MethodCallExpression>(144078)
          <Member>(144079)emit
            <PathExpression>(144080)
              packet
          <Vector<Type>>(23431), size=1
            <Type_Name>(23432)
              ipv4_t
          <Vector<Expression>>(144085), size=1
            <Member>(144086)ipv4
              <PathExpression>(144065)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(144087)
        <MethodCallExpression>(144088)
          <Member>(144089)emit
            <PathExpression>(144090)
              packet
          <Vector<Type>>(23442), size=1
            <Type_Name>(23443)
              udp_t
          <Vector<Expression>>(144095), size=1
            <Member>(144096)udp
              <PathExpression>(144065)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(144097)
        <MethodCallExpression>(144098)
          <Member>(144099)emit
            <PathExpression>(144100)
              packet
          <Vector<Type>>(23453), size=1
            <Type_Name>(23454)
              tcp_t
          <Vector<Expression>>(144105), size=1
            <Member>(144106)tcp
              <PathExpression>(144065)
                hdr */
        packet.emit<tcp_t>(hdr.tcp);
    }
}

/* 
  <P4Control>(7350) */
/* 
    <Type_Control>(7343)
      <Annotations>(3)
      <TypeParameters>(7344)
      <ParameterList>(7331) */
control verifyChecksum(/* 
        <Parameter>(7335)
          <Annotations>(3)
          <Type_Name>(7334) */
in headers hdr, /* 
        <Parameter>(7340)
          <Annotations>(3)
          <Type_Name>(7339) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(7347) */
    {
    }
}

/* 
  <P4Control>(7373) */
/* 
    <Type_Control>(7366)
      <Annotations>(3)
      <TypeParameters>(7367)
      <ParameterList>(7354) */
control computeChecksum(/* 
        <Parameter>(7358)
          <Annotations>(3)
          <Type_Name>(7357) */
inout headers hdr, /* 
        <Parameter>(7363)
          <Annotations>(3)
          <Type_Name>(7362) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(7370) */
    {
    }
}

/* 
  <Declaration_Instance>(144141)
    <Annotations>(3)
    <Type_Specialized>(23519)
      <Type_Name>(7378)
      <Vector<Type>>(23514), size=2
    <Vector<Expression>>(144151), size=6
      <ConstructorCallExpression>(144152)
        <Type_Name>(7382)
          ParserImpl
        <Vector<Expression>>(7380), size=0
      <ConstructorCallExpression>(144156)
        <Type_Name>(7385)
          verifyChecksum
        <Vector<Expression>>(7380), size=0
      <ConstructorCallExpression>(144159)
        <Type_Name>(7388)
          ingress
        <Vector<Expression>>(7380), size=0
      <ConstructorCallExpression>(144162)
        <Type_Name>(7391)
          egress
        <Vector<Expression>>(7380), size=0
      <ConstructorCallExpression>(144165)
        <Type_Name>(7394)
          computeChecksum
        <Vector<Expression>>(7380), size=0
      <ConstructorCallExpression>(144168)
        <Type_Name>(7397)
          DeparserImpl
        <Vector<Expression>>(7380), size=0 */
/* 
    <Type_Specialized>(157808)
      <Type_Name>(7378)
        V1Switch
      <Vector<Type>>(157807), size=2
        <Type_Name>(23515)
        <Type_Name>(23517) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
