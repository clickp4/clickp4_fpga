/* 
<P4Program>(59021)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <P4Action>(59109)
  <Declaration_MatchKind>(150)
  <Declaration_MatchKind>(156)
  <Type_Struct>(309)
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
  <Type_Struct>(5055)
  <Type_Struct>(5084)
  <P4Parser>(56784)
  <P4Control>(56977)
  <P4Control>(57131)
  <P4Control>(6284)
  <P4Control>(57204)
  <P4Control>(6370)
  <P4Control>(6393)
  <Declaration_Instance>(21903) */
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
  <Type_Struct>(5055) */
struct metadata {
/* 
    <StructField>(5065)
      <Annotations>(5063)
      <Type_Name>(5058) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(5074)
      <Annotations>(5072)
      <Type_Name>(5067) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(5083)
      <Annotations>(5081)
      <Type_Name>(5076) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
}

/* 
  <Type_Struct>(5084) */
struct headers {
/* 
    <StructField>(5094)
      <Annotations>(5092)
      <Type_Name>(5087) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(5103)
      <Annotations>(5101)
      <Type_Name>(5096) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(5112)
      <Annotations>(5110)
      <Type_Name>(5105) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(5121)
      <Annotations>(5119)
      <Type_Name>(5114) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(5130)
      <Annotations>(5128)
      <Type_Name>(5123) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(56784) */
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
    <ParserState>(56806) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(52811)
        <MethodCallExpression>(52810)
          <Member>(52808)extract
            <PathExpression>(5188)
              packet
          <Vector<Type>>(21295), size=1
            <Type_Name>(21296)
              ethernet_t
          <Vector<Expression>>(52765), size=1
            <Member>(52809)ethernet
              <PathExpression>(5170)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(5233)
        <ListExpression>(5195)
          <Member>(5197)eth_type
            <Member>(5212)ethernet
              <PathExpression>(5211)
                hdr
        <SelectCase>(5220)
          <Constant>(5219) 2048
            <Type_Bits>(192)
          <PathExpression>(5214)
            parse_ipv4
        <SelectCase>(5227)
          <Constant>(5226) 34525
            <Type_Bits>(192)
          <PathExpression>(5221)
            parse_ipv6
        <SelectCase>(5231)
          <DefaultExpression>(5230)
          <PathExpression>(5228)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(5220)
          <Constant>(5219) 2048
            <Type_Bits>(192)
          <PathExpression>(5214)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(5227)
          <Constant>(5226) 34525
            <Type_Bits>(192)
          <PathExpression>(5221)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(5231)
          <DefaultExpression>(5230)
          <PathExpression>(5228)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(56846) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(52951)
        <MethodCallExpression>(52950)
          <Member>(52948)extract
            <PathExpression>(5302)
              packet
          <Vector<Type>>(21333), size=1
            <Type_Name>(21334)
              ipv4_t
          <Vector<Expression>>(52905), size=1
            <Member>(52949)ipv4
              <PathExpression>(5271)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(5360)
        <ListExpression>(5309)
          <Member>(5311)proto
            <Member>(5339)ipv4
              <PathExpression>(5338)
                hdr
        <SelectCase>(5347)
          <Constant>(5346) 6
            <Type_Bits>(939)
          <PathExpression>(5341)
            parse_tcp
        <SelectCase>(5354)
          <Constant>(5353) 17
            <Type_Bits>(939)
          <PathExpression>(5348)
            parse_udp
        <SelectCase>(5358)
          <DefaultExpression>(5357)
          <PathExpression>(5355)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(5347)
          <Constant>(5346) 6
            <Type_Bits>(939)
          <PathExpression>(5341)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(5354)
          <Constant>(5353) 17
            <Type_Bits>(939)
          <PathExpression>(5348)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(5358)
          <DefaultExpression>(5357)
          <PathExpression>(5355)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(56885) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(53091)
        <MethodCallExpression>(53090)
          <Member>(53088)extract
            <PathExpression>(5419)
              packet
          <Vector<Type>>(21371), size=1
            <Type_Name>(21372)
              ipv6_t
          <Vector<Expression>>(53045), size=1
            <Member>(53089)ipv6
              <PathExpression>(5393)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(5465)
        <ListExpression>(5426)
          <Member>(5428)next_hdr
            <Member>(5451)ipv6
              <PathExpression>(5450)
                hdr
        <SelectCase>(5459)
          <Constant>(5458) 17
            <Type_Bits>(939)
          <PathExpression>(5453)
            parse_udp
        <SelectCase>(5463)
          <DefaultExpression>(5462)
          <PathExpression>(5460)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(5459)
          <Constant>(5458) 17
            <Type_Bits>(939)
          <PathExpression>(5453)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(5463)
          <DefaultExpression>(5462)
          <PathExpression>(5460)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(56920) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(53227)
        <MethodCallExpression>(53226)
          <Member>(53224)extract
            <PathExpression>(5526)
              packet
          <Vector<Type>>(21405), size=1
            <Type_Name>(21406)
              tcp_t
          <Vector<Expression>>(53181), size=1
            <Member>(53225)tcp
              <PathExpression>(5499)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(5532)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(56942) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(53347)
        <MethodCallExpression>(53346)
          <Member>(53344)extract
            <PathExpression>(5575)
              packet
          <Vector<Type>>(21426), size=1
            <Type_Name>(21427)
              udp_t
          <Vector<Expression>>(53301), size=1
            <Member>(53345)udp
              <PathExpression>(5557)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(5581)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(5602) */
    @name("start") state start {
/* 
      <PathExpression>(5593)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <P4Control>(56977) */
/* 
    <Type_Control>(5630)
      <Annotations>(3)
      <TypeParameters>(5628)
      <ParameterList>(5611) */
control pipeline_start(/* 
        <Parameter>(5615)
          <Annotations>(3)
          <Type_Name>(5614) */
inout headers hdr, /* 
        <Parameter>(5620)
          <Annotations>(3)
          <Type_Name>(5619) */
inout metadata meta, /* 
        <Parameter>(5625)
          <Annotations>(3)
          <Type_Name>(5624) */
inout standard_metadata_t standard_metadata) {
    /* 
    <P4Action>(56995)
      <Annotations>(5688)
      <ParameterList>(5634)
      <BlockStatement>(57005) */
    @name(".act_set_chain") action act_set_chain_0(/* 
        <Parameter>(5636)
          <Annotations>(3)
          <Type_Bits>(0) */
bit<32> chain_id, /* 
        <Parameter>(5637)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(57005) */
    {
        /* 
        <AssignmentStatement>(53416)
          <Member>(53413)click_id
            <Member>(5655)click_metadata
              <PathExpression>(5654)
                meta
          <PathExpression>(53414)
            chain_id */
        meta.click_metadata.click_id = chain_id;
        /* 
        <AssignmentStatement>(53431)
          <Member>(53428)click_bitmap
            <Member>(5678)click_metadata
              <PathExpression>(5677)
                meta
          <PathExpression>(53429)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Action>(57024)
      <Annotations>(5723)
      <ParameterList>(5693)
      <BlockStatement>(57033) */
    @name(".act_set_bitmap") action act_set_bitmap_0(/* 
        <Parameter>(5695)
          <Annotations>(3)
          <Type_Bits>(1012) */
bit<64> bitmap) /* 
      <BlockStatement>(57033) */
    {
        /* 
        <AssignmentStatement>(53457)
          <Member>(53454)click_bitmap
            <Member>(5713)click_metadata
              <PathExpression>(5712)
                meta
          <PathExpression>(53455)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Table>(48225)
      <Annotations>(5843)
      <TableProperties>(48231) */
    @name("tbl_pipeline_start") table tbl_pipeline_start_0 {
        /* 
        <Property>(48233) */
        actions = /* 
          <ActionList>(48234)
            <ActionListElement>(48236)
            <ActionListElement>(48244)
            <ActionListElement>(8896) */
        {
            /* 
            <ActionListElement>(48236)
              <Annotations>(3)
              <MethodCallExpression>(48237)
                <PathExpression>(48240)
                  act_set_chain_0/act_set_chain
                <Vector<Type>>(8877), size=0
                <Vector<Expression>>(8878), size=0 */
            act_set_chain_0();
            /* 
            <ActionListElement>(48244)
              <Annotations>(3)
              <MethodCallExpression>(48245)
                <PathExpression>(48248)
                  act_set_bitmap_0/act_set_bitmap
                <Vector<Type>>(8883), size=0
                <Vector<Expression>>(8884), size=0 */
            act_set_bitmap_0();
            /* 
            <ActionListElement>(8896)
              <Annotations>(8889)
                <Annotation>(8886)
              <MethodCallExpression>(8895)
                <PathExpression>(8891)
                  NoAction
                <Vector<Type>>(8893), size=0
                <Vector<Expression>>(8894), size=0 */
            @defaultonly NoAction();
        }
        /* 
        <Property>(32183) */
        key = /* 
          <Key>(32184)
            <KeyElement>(32186)
            <KeyElement>(32199)
            <KeyElement>(32211) */
        {
/* 
              <KeyElement>(32186)
                <Annotations>(32197)
                <Member>(5742)src_addr
                  <Member>(5770)ipv4
                    <PathExpression>(5769)
                      hdr
                <PathExpression>(5771)
                  ternary */
                        hdr.ipv4.src_addr: ternary @name("hdr.ipv4.src_addr") ;
/* 
              <KeyElement>(32199)
                <Annotations>(32209)
                <Member>(5774)dst_addr
                  <Member>(5802)ipv4
                    <PathExpression>(5801)
                      hdr
                <PathExpression>(5803)
                  ternary */
                        hdr.ipv4.dst_addr: ternary @name("hdr.ipv4.dst_addr") ;
/* 
              <KeyElement>(32211)
                <Annotations>(32221)
                <Member>(5806)proto
                  <Member>(5834)ipv4
                    <PathExpression>(5833)
                      hdr
                <PathExpression>(5835)
                  ternary */
                        hdr.ipv4.proto   : ternary @name("hdr.ipv4.proto") ;
        }
        /* 
        <Property>(8925) */
        default_action = /* 
          <ExpressionValue>(8924)
            <MethodCallExpression>(8922)
              <PathExpression>(8919)
                NoAction
              <Vector<Type>>(8923), size=0
              <Vector<Expression>>(8921), size=0 */
        NoAction();
    }
    apply /* 
    <BlockStatement>(57120) */
    {
        /* 
      <MethodCallStatement>(53602)
        <MethodCallExpression>(53601)
          <Member>(53600)apply
            <PathExpression>(48314)
              tbl_pipeline_start_0/tbl_pipeline_start
          <Vector<Type>>(5854), size=0
          <Vector<Expression>>(53575), size=0 */
        tbl_pipeline_start_0.apply();
    }
}

/* 
  <P4Control>(57131) */
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
    <Declaration_Instance>(48336)
      <Annotations>(5890)
        <Annotation>(5888)
      <Type_Name>(5885)
        pipeline_start
      <Vector<Expression>>(5892), size=0 */
    @name("pipeline_start") pipeline_start() pipeline_start_1;
    apply /* 
    <BlockStatement>(57159) */
    {
        /* 
      <IfStatement>(57161) */
        if ((meta.click_metadata.click_bitmap & 64w1) == 64w0) 
            /* 
        <MethodCallStatement>(53682)
          <MethodCallExpression>(53681)
            <Member>(53674)apply
              <PathExpression>(48363)
                pipeline_start_1/pipeline_start_0
            <Vector<Type>>(5933), size=0
            <Vector<Expression>>(53667), size=3
              <PathExpression>(53675)
                hdr
              <PathExpression>(53677)
                meta
              <PathExpression>(53679)
                standard_metadata */
            pipeline_start_1.apply(hdr, meta, standard_metadata);
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
  <P4Control>(57204) */
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
    <BlockStatement>(57219) */
    {
        /* 
      <MethodCallStatement>(53830)
        <MethodCallExpression>(53829)
          <Member>(53827)emit
            <PathExpression>(6313)
              packet
          <Vector<Type>>(21822), size=1
            <Type_Name>(21823)
              ethernet_t
          <Vector<Expression>>(53784), size=1
            <Member>(53828)ethernet
              <PathExpression>(6291)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(53936)
        <MethodCallExpression>(53935)
          <Member>(53933)emit
            <PathExpression>(6320)
              packet
          <Vector<Type>>(21833), size=1
            <Type_Name>(21834)
              ipv6_t
          <Vector<Expression>>(53890), size=1
            <Member>(53934)ipv6
              <PathExpression>(6291)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(54042)
        <MethodCallExpression>(54041)
          <Member>(54039)emit
            <PathExpression>(6327)
              packet
          <Vector<Type>>(21844), size=1
            <Type_Name>(21845)
              ipv4_t
          <Vector<Expression>>(53996), size=1
            <Member>(54040)ipv4
              <PathExpression>(6291)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(54148)
        <MethodCallExpression>(54147)
          <Member>(54145)emit
            <PathExpression>(6334)
              packet
          <Vector<Type>>(21855), size=1
            <Type_Name>(21856)
              udp_t
          <Vector<Expression>>(54102), size=1
            <Member>(54146)udp
              <PathExpression>(6291)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(54254)
        <MethodCallExpression>(54253)
          <Member>(54251)emit
            <PathExpression>(6341)
              packet
          <Vector<Type>>(21866), size=1
            <Type_Name>(21867)
              tcp_t
          <Vector<Expression>>(54208), size=1
            <Member>(54252)tcp
              <PathExpression>(6291)
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
  <Declaration_Instance>(21903)
    <Annotations>(3)
    <Type_Specialized>(21932)
      <Type_Name>(6398)
      <Vector<Type>>(21927), size=2
    <Vector<Expression>>(6399), size=6
      <ConstructorCallExpression>(6403)
        <Type_Name>(6402)
          ParserImpl
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(6406)
        <Type_Name>(6405)
          verifyChecksum
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(6409)
        <Type_Name>(6408)
          ingress
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(6412)
        <Type_Name>(6411)
          egress
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(6415)
        <Type_Name>(6414)
          computeChecksum
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(6418)
        <Type_Name>(6417)
          DeparserImpl
        <Vector<Expression>>(6400), size=0 */
/* 
    <Type_Specialized>(82584)
      <Type_Name>(6398)
        V1Switch
      <Vector<Type>>(82583), size=2
        <Type_Name>(21928)
        <Type_Name>(21930) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
