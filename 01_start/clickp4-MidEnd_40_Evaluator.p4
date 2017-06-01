/* 
<P4Program>(144785)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <Declaration_MatchKind>(150)
  <Declaration_MatchKind>(156)
  <Type_Struct>(144882)
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
  <Type_Struct>(145400)
  <Type_Struct>(145426)
  <P4Parser>(145468)
  <P4Control>(145651)
  <P4Control>(6521)
  <P4Control>(145836)
  <P4Control>(6607)
  <P4Control>(6630)
  <Declaration_Instance>(145939) */
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
  <Type_Struct>(145400) */
struct metadata {
/* 
    <StructField>(145402)
      <Annotations>(145403)
      <Type_Name>(5200) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(145410)
      <Annotations>(145411)
      <Type_Name>(5209) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(145418)
      <Annotations>(145419)
      <Type_Name>(5218) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
}

/* 
  <Type_Struct>(145426) */
struct headers {
/* 
    <StructField>(145428)
      <Annotations>(145429)
      <Type_Name>(5229) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(145436)
      <Annotations>(145437)
      <Type_Name>(5238) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(145444)
      <Annotations>(145445)
      <Type_Name>(5247) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(145452)
      <Annotations>(145453)
      <Type_Name>(5256) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(145460)
      <Annotations>(145461)
      <Type_Name>(5265) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(145468) */
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
    <ParserState>(145490) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(145497)
        <MethodCallExpression>(145498)
          <Member>(145499)extract
            <PathExpression>(145500)
              packet
          <Vector<Type>>(22366), size=1
            <Type_Name>(22367)
              ethernet_t
          <Vector<Expression>>(145505), size=1
            <Member>(145506)ethernet
              <PathExpression>(145507)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(145509)
        <ListExpression>(145511)
          <Member>(145513)eth_type
            <Member>(145514)ethernet
              <PathExpression>(145515)
                hdr
        <SelectCase>(145516)
          <Constant>(5361) 2048
            <Type_Bits>(192)
          <PathExpression>(145518)
            parse_ipv4
        <SelectCase>(145520)
          <Constant>(5368) 34525
            <Type_Bits>(192)
          <PathExpression>(145522)
            parse_ipv6
        <SelectCase>(145524)
          <DefaultExpression>(145525)
          <PathExpression>(145526)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(145516)
          <Constant>(5361) 2048
            <Type_Bits>(192)
          <PathExpression>(145518)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(145520)
          <Constant>(5368) 34525
            <Type_Bits>(192)
          <PathExpression>(145522)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(145524)
          <DefaultExpression>(145525)
          <PathExpression>(145526)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(145528) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(145535)
        <MethodCallExpression>(145536)
          <Member>(145537)extract
            <PathExpression>(145538)
              packet
          <Vector<Type>>(22404), size=1
            <Type_Name>(22405)
              ipv4_t
          <Vector<Expression>>(145543), size=1
            <Member>(145544)ipv4
              <PathExpression>(145545)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(145546)
        <ListExpression>(145548)
          <Member>(145550)proto
            <Member>(145551)ipv4
              <PathExpression>(145552)
                hdr
        <SelectCase>(145553)
          <Constant>(5488) 6
            <Type_Bits>(939)
          <PathExpression>(145555)
            parse_tcp
        <SelectCase>(145557)
          <Constant>(5495) 17
            <Type_Bits>(939)
          <PathExpression>(145559)
            parse_udp
        <SelectCase>(145561)
          <DefaultExpression>(145562)
          <PathExpression>(145563)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(145553)
          <Constant>(5488) 6
            <Type_Bits>(939)
          <PathExpression>(145555)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(145557)
          <Constant>(5495) 17
            <Type_Bits>(939)
          <PathExpression>(145559)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(145561)
          <DefaultExpression>(145562)
          <PathExpression>(145563)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(145565) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(145572)
        <MethodCallExpression>(145573)
          <Member>(145574)extract
            <PathExpression>(145575)
              packet
          <Vector<Type>>(22442), size=1
            <Type_Name>(22443)
              ipv6_t
          <Vector<Expression>>(145580), size=1
            <Member>(145581)ipv6
              <PathExpression>(145582)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(145583)
        <ListExpression>(145585)
          <Member>(145587)next_hdr
            <Member>(145588)ipv6
              <PathExpression>(145589)
                hdr
        <SelectCase>(145590)
          <Constant>(5600) 17
            <Type_Bits>(939)
          <PathExpression>(145592)
            parse_udp
        <SelectCase>(145594)
          <DefaultExpression>(145595)
          <PathExpression>(145596)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(145590)
          <Constant>(5600) 17
            <Type_Bits>(939)
          <PathExpression>(145592)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(145594)
          <DefaultExpression>(145595)
          <PathExpression>(145596)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(145598) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(145605)
        <MethodCallExpression>(145606)
          <Member>(145607)extract
            <PathExpression>(145608)
              packet
          <Vector<Type>>(22476), size=1
            <Type_Name>(22477)
              tcp_t
          <Vector<Expression>>(145613), size=1
            <Member>(145614)tcp
              <PathExpression>(145615)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(145616)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(145618) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(145625)
        <MethodCallExpression>(145626)
          <Member>(145627)extract
            <PathExpression>(145628)
              packet
          <Vector<Type>>(22497), size=1
            <Type_Name>(22498)
              udp_t
          <Vector<Expression>>(145633), size=1
            <Member>(145634)udp
              <PathExpression>(145635)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(145636)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(145638) */
    @name("start") state start {
/* 
      <PathExpression>(145645)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <P4Control>(145651) */
/* 
    <Type_Control>(6052)
      <Annotations>(3)
      <TypeParameters>(6050)
      <ParameterList>(6033) */
control ingress(/* 
        <Parameter>(6037)
          <Annotations>(3)
          <Type_Name>(6036) */
inout headers hdr, /* 
        <Parameter>(6042)
          <Annotations>(3)
          <Type_Name>(6041) */
inout metadata meta, /* 
        <Parameter>(6047)
          <Annotations>(3)
          <Type_Name>(6046) */
inout standard_metadata_t standard_metadata) {
    /* 
    <P4Action>(145669)
      <Annotations>(145670)
      <ParameterList>(142)
      <BlockStatement>(62367) */
    @name("NoAction") action NoAction_0() /* 
      <BlockStatement>(62367) */
    {
    }
    /* 
    <P4Action>(145679)
      <Annotations>(145680)
      <ParameterList>(107107)
      <BlockStatement>(145689) */
    @name(".act_set_chain") action _act_set_chain(/* 
        <Parameter>(107113)
          <Annotations>(3)
          <Type_Bits>(0) */
bit<32> chain_id, /* 
        <Parameter>(107118)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(145689) */
    {
        /* 
        <AssignmentStatement>(145691)
          <Member>(145692)click_id
            <Member>(145693)click_metadata
              <PathExpression>(145694)
                meta
          <PathExpression>(145696)
            chain_id */
        meta.click_metadata.click_id = chain_id;
        /* 
        <AssignmentStatement>(145698)
          <Member>(145699)click_bitmap
            <Member>(145700)click_metadata
              <PathExpression>(145701)
                meta
          <PathExpression>(145703)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Action>(145705)
      <Annotations>(145706)
      <ParameterList>(107136)
      <BlockStatement>(145714) */
    @name(".act_set_bitmap") action _act_set_bitmap(/* 
        <Parameter>(107142)
          <Annotations>(3)
          <Type_Bits>(1012) */
bit<64> bitmap) /* 
      <BlockStatement>(145714) */
    {
        /* 
        <AssignmentStatement>(145716)
          <Member>(145717)click_bitmap
            <Member>(145718)click_metadata
              <PathExpression>(145719)
                meta
          <PathExpression>(145721)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Table>(145723)
      <Annotations>(145724)
      <TableProperties>(145729) */
    @name("pipeline_start.tbl_pipeline_start") table pipeline_start_tbl_pipeline_start_0 {
        /* 
        <Property>(145731) */
        actions = /* 
          <ActionList>(145732)
            <ActionListElement>(145734)
            <ActionListElement>(145740)
            <ActionListElement>(145746) */
        {
            /* 
            <ActionListElement>(145734)
              <Annotations>(3)
              <MethodCallExpression>(145735)
                <PathExpression>(145736)
                  _act_set_chain/_act_set_chain_0
                <Vector<Type>>(9164), size=0
                <Vector<Expression>>(120059), size=0 */
            _act_set_chain();
            /* 
            <ActionListElement>(145740)
              <Annotations>(3)
              <MethodCallExpression>(145741)
                <PathExpression>(145742)
                  _act_set_bitmap/_act_set_bitmap_0
                <Vector<Type>>(9170), size=0
                <Vector<Expression>>(120077), size=0 */
            _act_set_bitmap();
            /* 
            <ActionListElement>(145746)
              <Annotations>(9176)
                <Annotation>(9173)
              <MethodCallExpression>(145751)
                <PathExpression>(145752)
                  NoAction_0/NoAction_1
                <Vector<Type>>(9180), size=0
                <Vector<Expression>>(120099), size=0 */
            @defaultonly NoAction_0();
        }
        /* 
        <Property>(145756) */
        key = /* 
          <Key>(145757)
            <KeyElement>(145759)
            <KeyElement>(145771)
            <KeyElement>(145781) */
        {
/* 
              <KeyElement>(145759)
                <Annotations>(145760)
                <Member>(145765)src_addr
                  <Member>(145766)ipv4
                    <PathExpression>(145767)
                      hdr
                <PathExpression>(145769)
                  ternary */
                        hdr.ipv4.src_addr: ternary @name("hdr.ipv4.src_addr") ;
/* 
              <KeyElement>(145771)
                <Annotations>(145772)
                <Member>(145777)dst_addr
                  <Member>(145778)ipv4
                    <PathExpression>(145767)
                      hdr
                <PathExpression>(145779)
                  ternary */
                        hdr.ipv4.dst_addr: ternary @name("hdr.ipv4.dst_addr") ;
/* 
              <KeyElement>(145781)
                <Annotations>(145782)
                <Member>(145787)proto
                  <Member>(145788)ipv4
                    <PathExpression>(145767)
                      hdr
                <PathExpression>(145789)
                  ternary */
                        hdr.ipv4.proto   : ternary @name("hdr.ipv4.proto") ;
        }
        /* 
        <Property>(145791) */
        default_action = /* 
          <ExpressionValue>(145792)
            <MethodCallExpression>(145793)
              <PathExpression>(145794)
                NoAction_0/NoAction_1
              <Vector<Type>>(9210), size=0
              <Vector<Expression>>(9208), size=0 */
        NoAction_0();
    }
    apply /* 
    <BlockStatement>(145798) */
    {
        /* 
      <IfStatement>(145800) */
        if ((meta.click_metadata.click_bitmap & 64w1) == 64w0) 
            /* 
        <MethodCallStatement>(145809)
          <MethodCallExpression>(145810)
            <Member>(145811)apply
              <PathExpression>(145812)
                pipeline_start_tbl_pipeline_start_0/pipeline_start_tbl_pipeline_start
            <Vector<Type>>(5996), size=0
            <Vector<Expression>>(56546), size=0 */
            pipeline_start_tbl_pipeline_start_0.apply();
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
  <P4Control>(145836) */
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
    <BlockStatement>(145851) */
    {
        /* 
      <MethodCallStatement>(145853)
        <MethodCallExpression>(145854)
          <Member>(145855)emit
            <PathExpression>(145856)
              packet
          <Vector<Type>>(22943), size=1
            <Type_Name>(22944)
              ethernet_t
          <Vector<Expression>>(145861), size=1
            <Member>(145862)ethernet
              <PathExpression>(145863)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(145865)
        <MethodCallExpression>(145866)
          <Member>(145867)emit
            <PathExpression>(145868)
              packet
          <Vector<Type>>(22954), size=1
            <Type_Name>(22955)
              ipv6_t
          <Vector<Expression>>(145873), size=1
            <Member>(145874)ipv6
              <PathExpression>(145863)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(145875)
        <MethodCallExpression>(145876)
          <Member>(145877)emit
            <PathExpression>(145878)
              packet
          <Vector<Type>>(22965), size=1
            <Type_Name>(22966)
              ipv4_t
          <Vector<Expression>>(145883), size=1
            <Member>(145884)ipv4
              <PathExpression>(145863)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(145885)
        <MethodCallExpression>(145886)
          <Member>(145887)emit
            <PathExpression>(145888)
              packet
          <Vector<Type>>(22976), size=1
            <Type_Name>(22977)
              udp_t
          <Vector<Expression>>(145893), size=1
            <Member>(145894)udp
              <PathExpression>(145863)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(145895)
        <MethodCallExpression>(145896)
          <Member>(145897)emit
            <PathExpression>(145898)
              packet
          <Vector<Type>>(22987), size=1
            <Type_Name>(22988)
              tcp_t
          <Vector<Expression>>(145903), size=1
            <Member>(145904)tcp
              <PathExpression>(145863)
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
  <Declaration_Instance>(145939)
    <Annotations>(3)
    <Type_Specialized>(23053)
      <Type_Name>(6635)
      <Vector<Type>>(23048), size=2
    <Vector<Expression>>(145949), size=6
      <ConstructorCallExpression>(145950)
        <Type_Name>(6639)
          ParserImpl
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(145954)
        <Type_Name>(6642)
          verifyChecksum
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(145957)
        <Type_Name>(6645)
          ingress
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(145960)
        <Type_Name>(6648)
          egress
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(145963)
        <Type_Name>(6651)
          computeChecksum
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(145966)
        <Type_Name>(6654)
          DeparserImpl
        <Vector<Expression>>(6637), size=0 */
/* 
    <Type_Specialized>(159302)
      <Type_Name>(6635)
        V1Switch
      <Vector<Type>>(159301), size=2
        <Type_Name>(23049)
        <Type_Name>(23051) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
