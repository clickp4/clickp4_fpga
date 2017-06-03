/* 
<P4Program>(138017)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <Declaration_MatchKind>(150)
  <Declaration_MatchKind>(156)
  <Type_Struct>(138114)
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
  <Type_Struct>(138632)
  <Type_Struct>(138658)
  <P4Parser>(138700)
  <P4Control>(138883)
  <P4Control>(6284)
  <P4Control>(139068)
  <P4Control>(6370)
  <P4Control>(6393)
  <Declaration_Instance>(139171) */
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
  <Type_Struct>(138632) */
struct metadata {
/* 
    <StructField>(138634)
      <Annotations>(138635)
      <Type_Name>(5058) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(138642)
      <Annotations>(138643)
      <Type_Name>(5067) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(138650)
      <Annotations>(138651)
      <Type_Name>(5076) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
}

/* 
  <Type_Struct>(138658) */
struct headers {
/* 
    <StructField>(138660)
      <Annotations>(138661)
      <Type_Name>(5087) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(138668)
      <Annotations>(138669)
      <Type_Name>(5096) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(138676)
      <Annotations>(138677)
      <Type_Name>(5105) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(138684)
      <Annotations>(138685)
      <Type_Name>(5114) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(138692)
      <Annotations>(138693)
      <Type_Name>(5123) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(138700) */
/* 
    <Type_Parser>(5153)
      <Annotations>(3)
      <TypeParameters>(5151)
      <ParameterList>(5131) */
parser ParserImpl(/* 
        <Parameter>(5135)
          <Annotations>(3)
          <Type_Name>(5134) */
packet_in packet, /* 
        <Parameter>(5138)
          <Annotations>(3)
          <Type_Name>(5137) */
out headers hdr, /* 
        <Parameter>(5143)
          <Annotations>(3)
          <Type_Name>(5142) */
inout metadata meta, /* 
        <Parameter>(5148)
          <Annotations>(3)
          <Type_Name>(5147) */
inout standard_metadata_t standard_metadata) {
    /* 
    <ParserState>(138722) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(138729)
        <MethodCallExpression>(138730)
          <Member>(138731)extract
            <PathExpression>(138732)
              packet
          <Vector<Type>>(21295), size=1
            <Type_Name>(21296)
              ethernet_t
          <Vector<Expression>>(138737), size=1
            <Member>(138738)ethernet
              <PathExpression>(138739)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(138741)
        <ListExpression>(138743)
          <Member>(138745)eth_type
            <Member>(138746)ethernet
              <PathExpression>(138747)
                hdr
        <SelectCase>(138748)
          <Constant>(5219) 2048
            <Type_Bits>(192)
          <PathExpression>(138750)
            parse_ipv4
        <SelectCase>(138752)
          <Constant>(5226) 34525
            <Type_Bits>(192)
          <PathExpression>(138754)
            parse_ipv6
        <SelectCase>(138756)
          <DefaultExpression>(138757)
          <PathExpression>(138758)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(138748)
          <Constant>(5219) 2048
            <Type_Bits>(192)
          <PathExpression>(138750)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(138752)
          <Constant>(5226) 34525
            <Type_Bits>(192)
          <PathExpression>(138754)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(138756)
          <DefaultExpression>(138757)
          <PathExpression>(138758)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(138760) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(138767)
        <MethodCallExpression>(138768)
          <Member>(138769)extract
            <PathExpression>(138770)
              packet
          <Vector<Type>>(21333), size=1
            <Type_Name>(21334)
              ipv4_t
          <Vector<Expression>>(138775), size=1
            <Member>(138776)ipv4
              <PathExpression>(138777)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(138778)
        <ListExpression>(138780)
          <Member>(138782)proto
            <Member>(138783)ipv4
              <PathExpression>(138784)
                hdr
        <SelectCase>(138785)
          <Constant>(5346) 6
            <Type_Bits>(939)
          <PathExpression>(138787)
            parse_tcp
        <SelectCase>(138789)
          <Constant>(5353) 17
            <Type_Bits>(939)
          <PathExpression>(138791)
            parse_udp
        <SelectCase>(138793)
          <DefaultExpression>(138794)
          <PathExpression>(138795)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(138785)
          <Constant>(5346) 6
            <Type_Bits>(939)
          <PathExpression>(138787)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(138789)
          <Constant>(5353) 17
            <Type_Bits>(939)
          <PathExpression>(138791)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(138793)
          <DefaultExpression>(138794)
          <PathExpression>(138795)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(138797) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(138804)
        <MethodCallExpression>(138805)
          <Member>(138806)extract
            <PathExpression>(138807)
              packet
          <Vector<Type>>(21371), size=1
            <Type_Name>(21372)
              ipv6_t
          <Vector<Expression>>(138812), size=1
            <Member>(138813)ipv6
              <PathExpression>(138814)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(138815)
        <ListExpression>(138817)
          <Member>(138819)next_hdr
            <Member>(138820)ipv6
              <PathExpression>(138821)
                hdr
        <SelectCase>(138822)
          <Constant>(5458) 17
            <Type_Bits>(939)
          <PathExpression>(138824)
            parse_udp
        <SelectCase>(138826)
          <DefaultExpression>(138827)
          <PathExpression>(138828)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(138822)
          <Constant>(5458) 17
            <Type_Bits>(939)
          <PathExpression>(138824)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(138826)
          <DefaultExpression>(138827)
          <PathExpression>(138828)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(138830) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(138837)
        <MethodCallExpression>(138838)
          <Member>(138839)extract
            <PathExpression>(138840)
              packet
          <Vector<Type>>(21405), size=1
            <Type_Name>(21406)
              tcp_t
          <Vector<Expression>>(138845), size=1
            <Member>(138846)tcp
              <PathExpression>(138847)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(138848)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(138850) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(138857)
        <MethodCallExpression>(138858)
          <Member>(138859)extract
            <PathExpression>(138860)
              packet
          <Vector<Type>>(21426), size=1
            <Type_Name>(21427)
              udp_t
          <Vector<Expression>>(138865), size=1
            <Member>(138866)udp
              <PathExpression>(138867)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(138868)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(138870) */
    @name("start") state start {
/* 
      <PathExpression>(138877)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <P4Control>(138883) */
/* 
    <Type_Control>(5882)
      <Annotations>(3)
      <TypeParameters>(5880)
      <ParameterList>(5863) */
control ingress(/* 
        <Parameter>(5867)
          <Annotations>(3)
          <Type_Name>(5866) */
inout headers hdr, /* 
        <Parameter>(5872)
          <Annotations>(3)
          <Type_Name>(5871) */
inout metadata meta, /* 
        <Parameter>(5877)
          <Annotations>(3)
          <Type_Name>(5876) */
inout standard_metadata_t standard_metadata) {
    /* 
    <P4Action>(138901)
      <Annotations>(138902)
      <ParameterList>(142)
      <BlockStatement>(59122) */
    @name("NoAction") action NoAction_0() /* 
      <BlockStatement>(59122) */
    {
    }
    /* 
    <P4Action>(138911)
      <Annotations>(138912)
      <ParameterList>(101856)
      <BlockStatement>(138921) */
    @name(".act_set_chain") action _act_set_chain(/* 
        <Parameter>(101862)
          <Annotations>(3)
          <Type_Bits>(0) */
bit<32> chain_id, /* 
        <Parameter>(101867)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(138921) */
    {
        /* 
        <AssignmentStatement>(138923)
          <Member>(138924)click_id
            <Member>(138925)click_metadata
              <PathExpression>(138926)
                meta
          <PathExpression>(138928)
            chain_id */
        meta.click_metadata.click_id = chain_id;
        /* 
        <AssignmentStatement>(138930)
          <Member>(138931)click_bitmap
            <Member>(138932)click_metadata
              <PathExpression>(138933)
                meta
          <PathExpression>(138935)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Action>(138937)
      <Annotations>(138938)
      <ParameterList>(101885)
      <BlockStatement>(138946) */
    @name(".act_set_bitmap") action _act_set_bitmap(/* 
        <Parameter>(101891)
          <Annotations>(3)
          <Type_Bits>(1012) */
bit<64> bitmap) /* 
      <BlockStatement>(138946) */
    {
        /* 
        <AssignmentStatement>(138948)
          <Member>(138949)click_bitmap
            <Member>(138950)click_metadata
              <PathExpression>(138951)
                meta
          <PathExpression>(138953)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Table>(138955)
      <Annotations>(138956)
      <TableProperties>(138961) */
    @name("pipeline_start.tbl_pipeline_start") table pipeline_start_tbl_pipeline_start_0 {
        /* 
        <Property>(138963) */
        actions = /* 
          <ActionList>(138964)
            <ActionListElement>(138966)
            <ActionListElement>(138972)
            <ActionListElement>(138978) */
        {
            /* 
            <ActionListElement>(138966)
              <Annotations>(3)
              <MethodCallExpression>(138967)
                <PathExpression>(138968)
                  _act_set_chain/_act_set_chain_0
                <Vector<Type>>(8877), size=0
                <Vector<Expression>>(113291), size=0 */
            _act_set_chain();
            /* 
            <ActionListElement>(138972)
              <Annotations>(3)
              <MethodCallExpression>(138973)
                <PathExpression>(138974)
                  _act_set_bitmap/_act_set_bitmap_0
                <Vector<Type>>(8883), size=0
                <Vector<Expression>>(113309), size=0 */
            _act_set_bitmap();
            /* 
            <ActionListElement>(138978)
              <Annotations>(8889)
                <Annotation>(8886)
              <MethodCallExpression>(138983)
                <PathExpression>(138984)
                  NoAction_0/NoAction_1
                <Vector<Type>>(8893), size=0
                <Vector<Expression>>(113331), size=0 */
            @defaultonly NoAction_0();
        }
        /* 
        <Property>(138988) */
        key = /* 
          <Key>(138989)
            <KeyElement>(138991)
            <KeyElement>(139003)
            <KeyElement>(139013) */
        {
/* 
              <KeyElement>(138991)
                <Annotations>(138992)
                <Member>(138997)src_addr
                  <Member>(138998)ipv4
                    <PathExpression>(138999)
                      hdr
                <PathExpression>(139001)
                  ternary */
                        hdr.ipv4.src_addr: ternary @name("hdr.ipv4.src_addr") ;
/* 
              <KeyElement>(139003)
                <Annotations>(139004)
                <Member>(139009)dst_addr
                  <Member>(139010)ipv4
                    <PathExpression>(138999)
                      hdr
                <PathExpression>(139011)
                  ternary */
                        hdr.ipv4.dst_addr: ternary @name("hdr.ipv4.dst_addr") ;
/* 
              <KeyElement>(139013)
                <Annotations>(139014)
                <Member>(139019)proto
                  <Member>(139020)ipv4
                    <PathExpression>(138999)
                      hdr
                <PathExpression>(139021)
                  ternary */
                        hdr.ipv4.proto   : ternary @name("hdr.ipv4.proto") ;
        }
        /* 
        <Property>(139023) */
        default_action = /* 
          <ExpressionValue>(139024)
            <MethodCallExpression>(139025)
              <PathExpression>(139026)
                NoAction_0/NoAction_1
              <Vector<Type>>(8923), size=0
              <Vector<Expression>>(8921), size=0 */
        NoAction_0();
    }
    apply /* 
    <BlockStatement>(139030) */
    {
        /* 
      <IfStatement>(139032) */
        if ((meta.click_metadata.click_bitmap & 64w1) == 64w0) 
            /* 
        <MethodCallStatement>(139041)
          <MethodCallExpression>(139042)
            <Member>(139043)apply
              <PathExpression>(139044)
                pipeline_start_tbl_pipeline_start_0/pipeline_start_tbl_pipeline_start
            <Vector<Type>>(5854), size=0
            <Vector<Expression>>(53575), size=0 */
            pipeline_start_tbl_pipeline_start_0.apply();
    }
}

/* 
  <P4Control>(6284) */
/* 
    <Type_Control>(6281)
      <Annotations>(3)
      <TypeParameters>(6279)
      <ParameterList>(6262) */
control egress(/* 
        <Parameter>(6266)
          <Annotations>(3)
          <Type_Name>(6265) */
inout headers hdr, /* 
        <Parameter>(6271)
          <Annotations>(3)
          <Type_Name>(6270) */
inout metadata meta, /* 
        <Parameter>(6276)
          <Annotations>(3)
          <Type_Name>(6275) */
inout standard_metadata_t standard_metadata) {
    apply /* 
    <BlockStatement>(6282) */
    {
    }
}

/* 
  <P4Control>(139068) */
/* 
    <Type_Control>(6307)
      <Annotations>(3)
      <TypeParameters>(6308)
      <ParameterList>(6300) */
control DeparserImpl(/* 
        <Parameter>(6304)
          <Annotations>(3)
          <Type_Name>(6303) */
packet_out packet, /* 
        <Parameter>(6290)
          <Annotations>(3)
          <Type_Name>(6289) */
in headers hdr) {
    apply /* 
    <BlockStatement>(139083) */
    {
        /* 
      <MethodCallStatement>(139085)
        <MethodCallExpression>(139086)
          <Member>(139087)emit
            <PathExpression>(139088)
              packet
          <Vector<Type>>(21822), size=1
            <Type_Name>(21823)
              ethernet_t
          <Vector<Expression>>(139093), size=1
            <Member>(139094)ethernet
              <PathExpression>(139095)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(139097)
        <MethodCallExpression>(139098)
          <Member>(139099)emit
            <PathExpression>(139100)
              packet
          <Vector<Type>>(21833), size=1
            <Type_Name>(21834)
              ipv6_t
          <Vector<Expression>>(139105), size=1
            <Member>(139106)ipv6
              <PathExpression>(139095)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(139107)
        <MethodCallExpression>(139108)
          <Member>(139109)emit
            <PathExpression>(139110)
              packet
          <Vector<Type>>(21844), size=1
            <Type_Name>(21845)
              ipv4_t
          <Vector<Expression>>(139115), size=1
            <Member>(139116)ipv4
              <PathExpression>(139095)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(139117)
        <MethodCallExpression>(139118)
          <Member>(139119)emit
            <PathExpression>(139120)
              packet
          <Vector<Type>>(21855), size=1
            <Type_Name>(21856)
              udp_t
          <Vector<Expression>>(139125), size=1
            <Member>(139126)udp
              <PathExpression>(139095)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(139127)
        <MethodCallExpression>(139128)
          <Member>(139129)emit
            <PathExpression>(139130)
              packet
          <Vector<Type>>(21866), size=1
            <Type_Name>(21867)
              tcp_t
          <Vector<Expression>>(139135), size=1
            <Member>(139136)tcp
              <PathExpression>(139095)
                hdr */
        packet.emit<tcp_t>(hdr.tcp);
    }
}

/* 
  <P4Control>(6370) */
/* 
    <Type_Control>(6363)
      <Annotations>(3)
      <TypeParameters>(6364)
      <ParameterList>(6351) */
control verifyChecksum(/* 
        <Parameter>(6355)
          <Annotations>(3)
          <Type_Name>(6354) */
in headers hdr, /* 
        <Parameter>(6360)
          <Annotations>(3)
          <Type_Name>(6359) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(6367) */
    {
    }
}

/* 
  <P4Control>(6393) */
/* 
    <Type_Control>(6386)
      <Annotations>(3)
      <TypeParameters>(6387)
      <ParameterList>(6374) */
control computeChecksum(/* 
        <Parameter>(6378)
          <Annotations>(3)
          <Type_Name>(6377) */
inout headers hdr, /* 
        <Parameter>(6383)
          <Annotations>(3)
          <Type_Name>(6382) */
inout metadata meta) {
    apply /* 
    <BlockStatement>(6390) */
    {
    }
}

/* 
  <Declaration_Instance>(139171)
    <Annotations>(3)
    <Type_Specialized>(21932)
      <Type_Name>(6398)
      <Vector<Type>>(21927), size=2
    <Vector<Expression>>(139181), size=6
      <ConstructorCallExpression>(139182)
        <Type_Name>(6402)
          ParserImpl
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(139186)
        <Type_Name>(6405)
          verifyChecksum
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(139189)
        <Type_Name>(6408)
          ingress
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(139192)
        <Type_Name>(6411)
          egress
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(139195)
        <Type_Name>(6414)
          computeChecksum
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(139198)
        <Type_Name>(6417)
          DeparserImpl
        <Vector<Expression>>(6400), size=0 */
/* 
    <Type_Specialized>(152534)
      <Type_Name>(6398)
        V1Switch
      <Vector<Type>>(152533), size=2
        <Type_Name>(21928)
        <Type_Name>(21930) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
