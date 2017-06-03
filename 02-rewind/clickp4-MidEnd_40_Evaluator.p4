/* 
<P4Program>(148257)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <Declaration_MatchKind>(150)
  <Declaration_MatchKind>(156)
  <Type_Struct>(148354)
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
  <Type_Struct>(148882)
  <Type_Struct>(148908)
  <P4Parser>(148950)
  <Type_Struct>(132921)
  <P4Control>(149143)
  <P4Control>(6284)
  <P4Control>(149326)
  <P4Control>(6370)
  <P4Control>(6393)
  <Declaration_Instance>(149429) */
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
  <Type_Struct>(148882) */
struct metadata {
/* 
    <StructField>(148884)
      <Annotations>(148885)
      <Type_Name>(5058) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(148892)
      <Annotations>(148893)
      <Type_Name>(5067) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(148900)
      <Annotations>(148901)
      <Type_Name>(5076) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
}

/* 
  <Type_Struct>(148908) */
struct headers {
/* 
    <StructField>(148910)
      <Annotations>(148911)
      <Type_Name>(5087) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(148918)
      <Annotations>(148919)
      <Type_Name>(5096) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(148926)
      <Annotations>(148927)
      <Type_Name>(5105) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(148934)
      <Annotations>(148935)
      <Type_Name>(5114) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(148942)
      <Annotations>(148943)
      <Type_Name>(5123) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(148950) */
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
    <ParserState>(148972) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(148979)
        <MethodCallExpression>(148980)
          <Member>(148981)extract
            <PathExpression>(148982)
              packet
          <Vector<Type>>(21295), size=1
            <Type_Name>(21296)
              ethernet_t
          <Vector<Expression>>(148987), size=1
            <Member>(148988)ethernet
              <PathExpression>(148989)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(148991)
        <ListExpression>(148993)
          <Member>(148995)eth_type
            <Member>(148996)ethernet
              <PathExpression>(148997)
                hdr
        <SelectCase>(148998)
          <Constant>(5219) 2048
            <Type_Bits>(192)
          <PathExpression>(149000)
            parse_ipv4
        <SelectCase>(149002)
          <Constant>(5226) 34525
            <Type_Bits>(192)
          <PathExpression>(149004)
            parse_ipv6
        <SelectCase>(149006)
          <DefaultExpression>(149007)
          <PathExpression>(149008)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(148998)
          <Constant>(5219) 2048
            <Type_Bits>(192)
          <PathExpression>(149000)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(149002)
          <Constant>(5226) 34525
            <Type_Bits>(192)
          <PathExpression>(149004)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(149006)
          <DefaultExpression>(149007)
          <PathExpression>(149008)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(149010) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(149017)
        <MethodCallExpression>(149018)
          <Member>(149019)extract
            <PathExpression>(149020)
              packet
          <Vector<Type>>(21333), size=1
            <Type_Name>(21334)
              ipv4_t
          <Vector<Expression>>(149025), size=1
            <Member>(149026)ipv4
              <PathExpression>(149027)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(149028)
        <ListExpression>(149030)
          <Member>(149032)proto
            <Member>(149033)ipv4
              <PathExpression>(149034)
                hdr
        <SelectCase>(149035)
          <Constant>(5346) 6
            <Type_Bits>(939)
          <PathExpression>(149037)
            parse_tcp
        <SelectCase>(149039)
          <Constant>(5353) 17
            <Type_Bits>(939)
          <PathExpression>(149041)
            parse_udp
        <SelectCase>(149043)
          <DefaultExpression>(149044)
          <PathExpression>(149045)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(149035)
          <Constant>(5346) 6
            <Type_Bits>(939)
          <PathExpression>(149037)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(149039)
          <Constant>(5353) 17
            <Type_Bits>(939)
          <PathExpression>(149041)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(149043)
          <DefaultExpression>(149044)
          <PathExpression>(149045)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(149047) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(149054)
        <MethodCallExpression>(149055)
          <Member>(149056)extract
            <PathExpression>(149057)
              packet
          <Vector<Type>>(21371), size=1
            <Type_Name>(21372)
              ipv6_t
          <Vector<Expression>>(149062), size=1
            <Member>(149063)ipv6
              <PathExpression>(149064)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(149065)
        <ListExpression>(149067)
          <Member>(149069)next_hdr
            <Member>(149070)ipv6
              <PathExpression>(149071)
                hdr
        <SelectCase>(149072)
          <Constant>(5458) 17
            <Type_Bits>(939)
          <PathExpression>(149074)
            parse_udp
        <SelectCase>(149076)
          <DefaultExpression>(149077)
          <PathExpression>(149078)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(149072)
          <Constant>(5458) 17
            <Type_Bits>(939)
          <PathExpression>(149074)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(149076)
          <DefaultExpression>(149077)
          <PathExpression>(149078)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(149080) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(149087)
        <MethodCallExpression>(149088)
          <Member>(149089)extract
            <PathExpression>(149090)
              packet
          <Vector<Type>>(21405), size=1
            <Type_Name>(21406)
              tcp_t
          <Vector<Expression>>(149095), size=1
            <Member>(149096)tcp
              <PathExpression>(149097)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(149098)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(149100) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(149107)
        <MethodCallExpression>(149108)
          <Member>(149109)extract
            <PathExpression>(149110)
              packet
          <Vector<Type>>(21426), size=1
            <Type_Name>(21427)
              udp_t
          <Vector<Expression>>(149115), size=1
            <Member>(149116)udp
              <PathExpression>(149117)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(149118)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(149120) */
    @name("start") state start {
/* 
      <PathExpression>(149127)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <Type_Struct>(132921) */
struct tuple_0 {
/* 
    <StructField>(132899)
      <Annotations>(3)
      <Type_Bits>(172) */
        bit<9>               field;
/* 
    <StructField>(132900)
      <Annotations>(3)
      <Type_Bits>(172) */
        bit<9>               field_0;
/* 
    <StructField>(132910)
      <Annotations>(3)
      <Type_Name>(132908) */
        intrinsic_metadata_t field_1;
/* 
    <StructField>(132918)
      <Annotations>(3)
      <Type_Name>(132916) */
        click_metadata_t     field_2;
}

/* 
  <P4Control>(149143) */
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
    <P4Action>(149161)
      <Annotations>(149162)
      <ParameterList>(142)
      <BlockStatement>(59263) */
    @name("NoAction") action NoAction_0() /* 
      <BlockStatement>(59263) */
    {
    }
    /* 
    <P4Action>(149171)
      <Annotations>(149172)
      <ParameterList>(103412)
      <BlockStatement>(149181) */
    @name(".rewind") action _rewind(/* 
        <Parameter>(103418)
          <Annotations>(3)
          <Type_Bits>(939) */
bit<8> state, /* 
        <Parameter>(103423)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(149181) */
    {
        /* 
        <AssignmentStatement>(149183)
          <Member>(149184)click_state
            <Member>(149185)click_metadata
              <PathExpression>(149186)
                meta
          <PathExpression>(149188)
            state */
        meta.click_metadata.click_state = state;
        /* 
        <AssignmentStatement>(149190)
          <Member>(149191)click_bitmap
            <Member>(149192)click_metadata
              <PathExpression>(149193)
                meta
          <PathExpression>(149195)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
        /* 
        <AssignmentStatement>(149197)
          <Member>(149198)click_input
            <Member>(149199)click_metadata
              <PathExpression>(149200)
                meta
          <Constant>(53487) 0
            <Type_Bits>(939) */
        meta.click_metadata.click_input = 8w0;
        /* 
        <MethodCallStatement>(149203)
          <MethodCallExpression>(149204)
            <PathExpression>(149205)
              resubmit
            <Vector<Type>>(132895), size=1
              <Type_Name>(132923)
                tuple_0
            <Vector<Expression>>(149210), size=1
              <ListExpression>(149211)
                <Member>(149213)ingress_port
                  <PathExpression>(149214)
                    standard_metadata
                <Member>(149216)egress_spec
                  <PathExpression>(149217)
                    standard_metadata
                <Member>(149219)intrinsic_metadata
                  <PathExpression>(149220)
                    meta
                <Member>(149222)click_metadata
                  <PathExpression>(149223)
                    meta */
        resubmit<tuple_0>({ standard_metadata.ingress_port, standard_metadata.egress_spec, meta.intrinsic_metadata, meta.click_metadata });
    }
    /* 
    <P4Table>(149225)
      <Annotations>(149226)
      <TableProperties>(149231) */
    @name("pipeline_rewind.rewind_table") table pipeline_rewind_rewind_table_0 {
        /* 
        <Property>(149233) */
        actions = /* 
          <ActionList>(149234)
            <ActionListElement>(149236)
            <ActionListElement>(149242) */
        {
            /* 
            <ActionListElement>(149236)
              <Annotations>(3)
              <MethodCallExpression>(149237)
                <PathExpression>(149238)
                  _rewind/_rewind_0
                <Vector<Type>>(8882), size=0
                <Vector<Expression>>(115231), size=0 */
            _rewind();
            /* 
            <ActionListElement>(149242)
              <Annotations>(8888)
                <Annotation>(8885)
              <MethodCallExpression>(149247)
                <PathExpression>(149248)
                  NoAction_0/NoAction_1
                <Vector<Type>>(8892), size=0
                <Vector<Expression>>(115253), size=0 */
            @defaultonly NoAction_0();
        }
        /* 
        <Property>(149252) */
        key = /* 
          <Key>(149253)
            <KeyElement>(149255)
            <KeyElement>(149267) */
        {
/* 
              <KeyElement>(149255)
                <Annotations>(149256)
                <Member>(149261)click_id
                  <Member>(149262)click_metadata
                    <PathExpression>(149263)
                      meta
                <PathExpression>(149265)
                  exact */
                        meta.click_metadata.click_id   : exact @name("meta.click_metadata.click_id") ;
/* 
              <KeyElement>(149267)
                <Annotations>(149268)
                <Member>(149273)click_state
                  <Member>(149274)click_metadata
                    <PathExpression>(149263)
                      meta
                <PathExpression>(149275)
                  exact */
                        meta.click_metadata.click_state: exact @name("meta.click_metadata.click_state") ;
        }
        /* 
        <Property>(149277) */
        default_action = /* 
          <ExpressionValue>(149278)
            <MethodCallExpression>(149279)
              <PathExpression>(149280)
                NoAction_0/NoAction_1
              <Vector<Type>>(8915), size=0
              <Vector<Expression>>(8913), size=0 */
        NoAction_0();
    }
    apply /* 
    <BlockStatement>(149284) */
    {
        /* 
      <IfStatement>(149286) */
        if ((meta.click_metadata.click_bitmap & 64w2147483648) == 64w0) 
            /* 
        <IfStatement>(149294) */
            if (meta.click_metadata.click_id != 32w0) 
                /* 
          <MethodCallStatement>(149299)
            <MethodCallExpression>(149300)
              <Member>(149301)apply
                <PathExpression>(149302)
                  pipeline_rewind_rewind_table_0/pipeline_rewind_rewind_table
              <Vector<Type>>(5870), size=0
              <Vector<Expression>>(53729), size=0 */
                pipeline_rewind_rewind_table_0.apply();
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
  <P4Control>(149326) */
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
    <BlockStatement>(149341) */
    {
        /* 
      <MethodCallStatement>(149343)
        <MethodCallExpression>(149344)
          <Member>(149345)emit
            <PathExpression>(149346)
              packet
          <Vector<Type>>(21822), size=1
            <Type_Name>(21823)
              ethernet_t
          <Vector<Expression>>(149351), size=1
            <Member>(149352)ethernet
              <PathExpression>(149353)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(149355)
        <MethodCallExpression>(149356)
          <Member>(149357)emit
            <PathExpression>(149358)
              packet
          <Vector<Type>>(21833), size=1
            <Type_Name>(21834)
              ipv6_t
          <Vector<Expression>>(149363), size=1
            <Member>(149364)ipv6
              <PathExpression>(149353)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(149365)
        <MethodCallExpression>(149366)
          <Member>(149367)emit
            <PathExpression>(149368)
              packet
          <Vector<Type>>(21844), size=1
            <Type_Name>(21845)
              ipv4_t
          <Vector<Expression>>(149373), size=1
            <Member>(149374)ipv4
              <PathExpression>(149353)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(149375)
        <MethodCallExpression>(149376)
          <Member>(149377)emit
            <PathExpression>(149378)
              packet
          <Vector<Type>>(21855), size=1
            <Type_Name>(21856)
              udp_t
          <Vector<Expression>>(149383), size=1
            <Member>(149384)udp
              <PathExpression>(149353)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(149385)
        <MethodCallExpression>(149386)
          <Member>(149387)emit
            <PathExpression>(149388)
              packet
          <Vector<Type>>(21866), size=1
            <Type_Name>(21867)
              tcp_t
          <Vector<Expression>>(149393), size=1
            <Member>(149394)tcp
              <PathExpression>(149353)
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
  <Declaration_Instance>(149429)
    <Annotations>(3)
    <Type_Specialized>(21932)
      <Type_Name>(6398)
      <Vector<Type>>(21927), size=2
    <Vector<Expression>>(149439), size=6
      <ConstructorCallExpression>(149440)
        <Type_Name>(6402)
          ParserImpl
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(149444)
        <Type_Name>(6405)
          verifyChecksum
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(149447)
        <Type_Name>(6408)
          ingress
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(149450)
        <Type_Name>(6411)
          egress
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(149453)
        <Type_Name>(6414)
          computeChecksum
        <Vector<Expression>>(6400), size=0
      <ConstructorCallExpression>(149456)
        <Type_Name>(6417)
          DeparserImpl
        <Vector<Expression>>(6400), size=0 */
/* 
    <Type_Specialized>(163019)
      <Type_Name>(6398)
        V1Switch
      <Vector<Type>>(163018), size=2
        <Type_Name>(21928)
        <Type_Name>(21930) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
