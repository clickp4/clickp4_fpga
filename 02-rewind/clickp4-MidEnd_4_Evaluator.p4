/* 
<P4Program>(59162)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <P4Action>(59250)
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
  <Type_Struct>(5055)
  <Type_Struct>(5084)
  <P4Parser>(56943)
  <P4Control>(57136)
  <P4Control>(57287)
  <P4Control>(6284)
  <P4Control>(57360)
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
  <P4Parser>(56943) */
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
    <ParserState>(56965) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(52855)
        <MethodCallExpression>(52854)
          <Member>(52852)extract
            <PathExpression>(5188)
              packet
          <Vector<Type>>(21295), size=1
            <Type_Name>(21296)
              ethernet_t
          <Vector<Expression>>(52809), size=1
            <Member>(52853)ethernet
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
    <ParserState>(57005) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(52995)
        <MethodCallExpression>(52994)
          <Member>(52992)extract
            <PathExpression>(5302)
              packet
          <Vector<Type>>(21333), size=1
            <Type_Name>(21334)
              ipv4_t
          <Vector<Expression>>(52949), size=1
            <Member>(52993)ipv4
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
    <ParserState>(57044) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(53135)
        <MethodCallExpression>(53134)
          <Member>(53132)extract
            <PathExpression>(5419)
              packet
          <Vector<Type>>(21371), size=1
            <Type_Name>(21372)
              ipv6_t
          <Vector<Expression>>(53089), size=1
            <Member>(53133)ipv6
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
    <ParserState>(57079) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(53271)
        <MethodCallExpression>(53270)
          <Member>(53268)extract
            <PathExpression>(5526)
              packet
          <Vector<Type>>(21405), size=1
            <Type_Name>(21406)
              tcp_t
          <Vector<Expression>>(53225), size=1
            <Member>(53269)tcp
              <PathExpression>(5499)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(5532)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(57101) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(53391)
        <MethodCallExpression>(53390)
          <Member>(53388)extract
            <PathExpression>(5575)
              packet
          <Vector<Type>>(21426), size=1
            <Type_Name>(21427)
              udp_t
          <Vector<Expression>>(53345), size=1
            <Member>(53389)udp
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
  <P4Control>(57136) */
/* 
    <Type_Control>(5630)
      <Annotations>(3)
      <TypeParameters>(5628)
      <ParameterList>(5611) */
control pipeline_rewind(/* 
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
    <P4Action>(57154)
      <Annotations>(5773)
      <ParameterList>(5634)
      <BlockStatement>(57164) */
    @name(".rewind") action rewind_0(/* 
        <Parameter>(5636)
          <Annotations>(3)
          <Type_Bits>(939) */
bit<8> state, /* 
        <Parameter>(5637)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(57164) */
    {
        /* 
        <AssignmentStatement>(53460)
          <Member>(53457)click_state
            <Member>(5655)click_metadata
              <PathExpression>(5654)
                meta
          <PathExpression>(53458)
            state */
        meta.click_metadata.click_state = state;
        /* 
        <AssignmentStatement>(53475)
          <Member>(53472)click_bitmap
            <Member>(5678)click_metadata
              <PathExpression>(5677)
                meta
          <PathExpression>(53473)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
        /* 
        <AssignmentStatement>(53488)
          <Member>(53486)click_input
            <Member>(5701)click_metadata
              <PathExpression>(5700)
                meta
          <Constant>(53487) 0
            <Type_Bits>(939) */
        meta.click_metadata.click_input = 8w0;
        /* 
        <MethodCallStatement>(53623)
          <MethodCallExpression>(53622)
            <PathExpression>(53614)
              resubmit
            <Vector<Type>>(21511), size=1
              <Type_Tuple>(16120)
                <Type_Bits>(172)
                <Type_Bits>(172)
                <Type_Struct>(994)
                <Type_Struct>(1039)
            <Vector<Expression>>(53564), size=1
              <ListExpression>(53616)
                <Member>(5712)ingress_port
                  <PathExpression>(5729)
                    standard_metadata
                <Member>(5730)egress_spec
                  <PathExpression>(5732)
                    standard_metadata
                <Member>(5747)intrinsic_metadata
                  <PathExpression>(5746)
                    meta
                <Member>(5760)click_metadata
                  <PathExpression>(5759)
                    meta */
        resubmit</* 
              <Type_Tuple>(16120) */
tuple<bit<9>, bit<9>, intrinsic_metadata_t, click_metadata_t>>({ standard_metadata.ingress_port, standard_metadata.egress_spec, meta.intrinsic_metadata, meta.click_metadata });
    }
    /* 
    <P4Table>(48305)
      <Annotations>(5836)
      <TableProperties>(48311) */
    @name("rewind_table") table rewind_table_0 {
        /* 
        <Property>(48313) */
        actions = /* 
          <ActionList>(48314)
            <ActionListElement>(48316)
            <ActionListElement>(8895) */
        {
            /* 
            <ActionListElement>(48316)
              <Annotations>(3)
              <MethodCallExpression>(48317)
                <PathExpression>(48320)
                  rewind_0/rewind
                <Vector<Type>>(8882), size=0
                <Vector<Expression>>(8883), size=0 */
            rewind_0();
            /* 
            <ActionListElement>(8895)
              <Annotations>(8888)
                <Annotation>(8885)
              <MethodCallExpression>(8894)
                <PathExpression>(8890)
                  NoAction
                <Vector<Type>>(8892), size=0
                <Vector<Expression>>(8893), size=0 */
            @defaultonly NoAction();
        }
        /* 
        <Property>(32183) */
        key = /* 
          <Key>(32184)
            <KeyElement>(32186)
            <KeyElement>(32198) */
        {
/* 
              <KeyElement>(32186)
                <Annotations>(32196)
                <Member>(5789)click_id
                  <Member>(5806)click_metadata
                    <PathExpression>(5805)
                      meta
                <PathExpression>(5807)
                  exact */
                        meta.click_metadata.click_id   : exact @name("meta.click_metadata.click_id") ;
/* 
              <KeyElement>(32198)
                <Annotations>(32208)
                <Member>(5810)click_state
                  <Member>(5827)click_metadata
                    <PathExpression>(5826)
                      meta
                <PathExpression>(5828)
                  exact */
                        meta.click_metadata.click_state: exact @name("meta.click_metadata.click_state") ;
        }
        /* 
        <Property>(8917) */
        default_action = /* 
          <ExpressionValue>(8916)
            <MethodCallExpression>(8914)
              <PathExpression>(8911)
                NoAction
              <Vector<Type>>(8915), size=0
              <Vector<Expression>>(8913), size=0 */
        NoAction();
    }
    apply /* 
    <BlockStatement>(57270) */
    {
        /* 
      <IfStatement>(57272) */
        if (meta.click_metadata.click_id != 32w0) 
            /* 
        <MethodCallStatement>(53756)
          <MethodCallExpression>(53755)
            <Member>(53754)apply
              <PathExpression>(48380)
                rewind_table_0/rewind_table
            <Vector<Type>>(5870), size=0
            <Vector<Expression>>(53729), size=0 */
            rewind_table_0.apply();
    }
}

/* 
  <P4Control>(57287) */
/* 
    <Type_Control>(5903)
      <Annotations>(3)
      <TypeParameters>(5901)
      <ParameterList>(5884) */
control ingress(/* 
        <Parameter>(5888)
          <Annotations>(3)
          <Type_Name>(5887) */
inout headers hdr, /* 
        <Parameter>(5893)
          <Annotations>(3)
          <Type_Name>(5892) */
inout metadata meta, /* 
        <Parameter>(5898)
          <Annotations>(3)
          <Type_Name>(5897) */
inout standard_metadata_t standard_metadata) {
    /* 
    <Declaration_Instance>(48402)
      <Annotations>(5911)
        <Annotation>(5909)
      <Type_Name>(5906)
        pipeline_rewind
      <Vector<Expression>>(5913), size=0 */
    @name("pipeline_rewind") pipeline_rewind() pipeline_rewind_1;
    apply /* 
    <BlockStatement>(57315) */
    {
        /* 
      <IfStatement>(57317) */
        if ((meta.click_metadata.click_bitmap & 64w2147483648) == 64w0) 
            /* 
        <MethodCallStatement>(53839)
          <MethodCallExpression>(53838)
            <Member>(53831)apply
              <PathExpression>(48429)
                pipeline_rewind_1/pipeline_rewind_0
            <Vector<Type>>(5985), size=0
            <Vector<Expression>>(53824), size=3
              <PathExpression>(53832)
                hdr
              <PathExpression>(53834)
                meta
              <PathExpression>(53836)
                standard_metadata */
            pipeline_rewind_1.apply(hdr, meta, standard_metadata);
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
  <P4Control>(57360) */
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
    <BlockStatement>(57375) */
    {
        /* 
      <MethodCallStatement>(53987)
        <MethodCallExpression>(53986)
          <Member>(53984)emit
            <PathExpression>(6313)
              packet
          <Vector<Type>>(21822), size=1
            <Type_Name>(21823)
              ethernet_t
          <Vector<Expression>>(53941), size=1
            <Member>(53985)ethernet
              <PathExpression>(6291)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(54093)
        <MethodCallExpression>(54092)
          <Member>(54090)emit
            <PathExpression>(6320)
              packet
          <Vector<Type>>(21833), size=1
            <Type_Name>(21834)
              ipv6_t
          <Vector<Expression>>(54047), size=1
            <Member>(54091)ipv6
              <PathExpression>(6291)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(54199)
        <MethodCallExpression>(54198)
          <Member>(54196)emit
            <PathExpression>(6327)
              packet
          <Vector<Type>>(21844), size=1
            <Type_Name>(21845)
              ipv4_t
          <Vector<Expression>>(54153), size=1
            <Member>(54197)ipv4
              <PathExpression>(6291)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(54305)
        <MethodCallExpression>(54304)
          <Member>(54302)emit
            <PathExpression>(6334)
              packet
          <Vector<Type>>(21855), size=1
            <Type_Name>(21856)
              udp_t
          <Vector<Expression>>(54259), size=1
            <Member>(54303)udp
              <PathExpression>(6291)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(54411)
        <MethodCallExpression>(54410)
          <Member>(54408)emit
            <PathExpression>(6341)
              packet
          <Vector<Type>>(21866), size=1
            <Type_Name>(21867)
              tcp_t
          <Vector<Expression>>(54365), size=1
            <Member>(54409)tcp
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
    <Type_Specialized>(83205)
      <Type_Name>(6398)
        V1Switch
      <Vector<Type>>(83204), size=2
        <Type_Name>(21928)
        <Type_Name>(21930) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
