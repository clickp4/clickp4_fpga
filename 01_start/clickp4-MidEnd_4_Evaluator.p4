/* 
<P4Program>(62266)
  <Type_Error>(18)
  <Type_Extern>(89)
  <Type_Extern>(110)
  <Method>(125)
  <P4Action>(62354)
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
  <Type_Struct>(5197)
  <Type_Struct>(5226)
  <P4Parser>(59910)
  <P4Control>(60103)
  <P4Control>(6029)
  <P4Control>(60277)
  <P4Control>(6521)
  <P4Control>(60380)
  <P4Control>(6607)
  <P4Control>(6630)
  <Declaration_Instance>(23024) */
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
  <Type_Struct>(5197) */
struct metadata {
/* 
    <StructField>(5207)
      <Annotations>(5205)
      <Type_Name>(5200) */
        @name("click_metadata") 
    click_metadata_t     click_metadata;
/* 
    <StructField>(5216)
      <Annotations>(5214)
      <Type_Name>(5209) */
        @name("intrinsic_metadata") 
    intrinsic_metadata_t intrinsic_metadata;
/* 
    <StructField>(5225)
      <Annotations>(5223)
      <Type_Name>(5218) */
        @name("security_metadata") 
    security_metadata_t  security_metadata;
}

/* 
  <Type_Struct>(5226) */
struct headers {
/* 
    <StructField>(5236)
      <Annotations>(5234)
      <Type_Name>(5229) */
        @name("ethernet") 
    ethernet_t ethernet;
/* 
    <StructField>(5245)
      <Annotations>(5243)
      <Type_Name>(5238) */
        @name("ipv4") 
    ipv4_t     ipv4;
/* 
    <StructField>(5254)
      <Annotations>(5252)
      <Type_Name>(5247) */
        @name("ipv6") 
    ipv6_t     ipv6;
/* 
    <StructField>(5263)
      <Annotations>(5261)
      <Type_Name>(5256) */
        @name("tcp") 
    tcp_t      tcp;
/* 
    <StructField>(5272)
      <Annotations>(5270)
      <Type_Name>(5265) */
        @name("udp") 
    udp_t      udp;
}

/* 
  <P4Parser>(59910) */
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
    <ParserState>(59932) */
    @name("parse_ethernet") state parse_ethernet {
        /* 
      <MethodCallStatement>(55782)
        <MethodCallExpression>(55781)
          <Member>(55779)extract
            <PathExpression>(5330)
              packet
          <Vector<Type>>(22366), size=1
            <Type_Name>(22367)
              ethernet_t
          <Vector<Expression>>(55736), size=1
            <Member>(55780)ethernet
              <PathExpression>(5312)
                hdr */
        packet.extract<ethernet_t>(hdr.ethernet);
/* 
      <SelectExpression>(5375)
        <ListExpression>(5337)
          <Member>(5339)eth_type
            <Member>(5354)ethernet
              <PathExpression>(5353)
                hdr
        <SelectCase>(5362)
          <Constant>(5361) 2048
            <Type_Bits>(192)
          <PathExpression>(5356)
            parse_ipv4
        <SelectCase>(5369)
          <Constant>(5368) 34525
            <Type_Bits>(192)
          <PathExpression>(5363)
            parse_ipv6
        <SelectCase>(5373)
          <DefaultExpression>(5372)
          <PathExpression>(5370)
            accept */
                transition select(hdr.ethernet.eth_type) {
            /* 
        <SelectCase>(5362)
          <Constant>(5361) 2048
            <Type_Bits>(192)
          <PathExpression>(5356)
            parse_ipv4 */
            16w0x800: parse_ipv4;
            /* 
        <SelectCase>(5369)
          <Constant>(5368) 34525
            <Type_Bits>(192)
          <PathExpression>(5363)
            parse_ipv6 */
            16w0x86dd: parse_ipv6;
            /* 
        <SelectCase>(5373)
          <DefaultExpression>(5372)
          <PathExpression>(5370)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(59972) */
    @name("parse_ipv4") state parse_ipv4 {
        /* 
      <MethodCallStatement>(55922)
        <MethodCallExpression>(55921)
          <Member>(55919)extract
            <PathExpression>(5444)
              packet
          <Vector<Type>>(22404), size=1
            <Type_Name>(22405)
              ipv4_t
          <Vector<Expression>>(55876), size=1
            <Member>(55920)ipv4
              <PathExpression>(5413)
                hdr */
        packet.extract<ipv4_t>(hdr.ipv4);
/* 
      <SelectExpression>(5502)
        <ListExpression>(5451)
          <Member>(5453)proto
            <Member>(5481)ipv4
              <PathExpression>(5480)
                hdr
        <SelectCase>(5489)
          <Constant>(5488) 6
            <Type_Bits>(939)
          <PathExpression>(5483)
            parse_tcp
        <SelectCase>(5496)
          <Constant>(5495) 17
            <Type_Bits>(939)
          <PathExpression>(5490)
            parse_udp
        <SelectCase>(5500)
          <DefaultExpression>(5499)
          <PathExpression>(5497)
            accept */
                transition select(hdr.ipv4.proto) {
            /* 
        <SelectCase>(5489)
          <Constant>(5488) 6
            <Type_Bits>(939)
          <PathExpression>(5483)
            parse_tcp */
            8w6: parse_tcp;
            /* 
        <SelectCase>(5496)
          <Constant>(5495) 17
            <Type_Bits>(939)
          <PathExpression>(5490)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(5500)
          <DefaultExpression>(5499)
          <PathExpression>(5497)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(60011) */
    @name("parse_ipv6") state parse_ipv6 {
        /* 
      <MethodCallStatement>(56062)
        <MethodCallExpression>(56061)
          <Member>(56059)extract
            <PathExpression>(5561)
              packet
          <Vector<Type>>(22442), size=1
            <Type_Name>(22443)
              ipv6_t
          <Vector<Expression>>(56016), size=1
            <Member>(56060)ipv6
              <PathExpression>(5535)
                hdr */
        packet.extract<ipv6_t>(hdr.ipv6);
/* 
      <SelectExpression>(5607)
        <ListExpression>(5568)
          <Member>(5570)next_hdr
            <Member>(5593)ipv6
              <PathExpression>(5592)
                hdr
        <SelectCase>(5601)
          <Constant>(5600) 17
            <Type_Bits>(939)
          <PathExpression>(5595)
            parse_udp
        <SelectCase>(5605)
          <DefaultExpression>(5604)
          <PathExpression>(5602)
            accept */
                transition select(hdr.ipv6.next_hdr) {
            /* 
        <SelectCase>(5601)
          <Constant>(5600) 17
            <Type_Bits>(939)
          <PathExpression>(5595)
            parse_udp */
            8w17: parse_udp;
            /* 
        <SelectCase>(5605)
          <DefaultExpression>(5604)
          <PathExpression>(5602)
            accept */
            default: accept;
        }
    }
    /* 
    <ParserState>(60046) */
    @name("parse_tcp") state parse_tcp {
        /* 
      <MethodCallStatement>(56198)
        <MethodCallExpression>(56197)
          <Member>(56195)extract
            <PathExpression>(5668)
              packet
          <Vector<Type>>(22476), size=1
            <Type_Name>(22477)
              tcp_t
          <Vector<Expression>>(56152), size=1
            <Member>(56196)tcp
              <PathExpression>(5641)
                hdr */
        packet.extract<tcp_t>(hdr.tcp);
/* 
      <PathExpression>(5674)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(60068) */
    @name("parse_udp") state parse_udp {
        /* 
      <MethodCallStatement>(56318)
        <MethodCallExpression>(56317)
          <Member>(56315)extract
            <PathExpression>(5717)
              packet
          <Vector<Type>>(22497), size=1
            <Type_Name>(22498)
              udp_t
          <Vector<Expression>>(56272), size=1
            <Member>(56316)udp
              <PathExpression>(5699)
                hdr */
        packet.extract<udp_t>(hdr.udp);
/* 
      <PathExpression>(5723)
        accept */
                transition accept;
    }
    /* 
    <ParserState>(5744) */
    @name("start") state start {
/* 
      <PathExpression>(5735)
        parse_ethernet */
                transition parse_ethernet;
    }
}

/* 
  <P4Control>(60103) */
/* 
    <Type_Control>(5772)
      <Annotations>(3)
      <TypeParameters>(5770)
      <ParameterList>(5753) */
control pipeline_start(/* 
        <Parameter>(5757)
          <Annotations>(3)
          <Type_Name>(5756) */
inout headers hdr, /* 
        <Parameter>(5762)
          <Annotations>(3)
          <Type_Name>(5761) */
inout metadata meta, /* 
        <Parameter>(5767)
          <Annotations>(3)
          <Type_Name>(5766) */
inout standard_metadata_t standard_metadata) {
    /* 
    <P4Action>(60121)
      <Annotations>(5830)
      <ParameterList>(5776)
      <BlockStatement>(60131) */
    @name(".act_set_chain") action act_set_chain_0(/* 
        <Parameter>(5778)
          <Annotations>(3)
          <Type_Bits>(0) */
bit<32> chain_id, /* 
        <Parameter>(5779)
          <Annotations>(3)
          <Type_Bits>(1012) */
    bit<64> bitmap) /* 
      <BlockStatement>(60131) */
    {
        /* 
        <AssignmentStatement>(56387)
          <Member>(56384)click_id
            <Member>(5797)click_metadata
              <PathExpression>(5796)
                meta
          <PathExpression>(56385)
            chain_id */
        meta.click_metadata.click_id = chain_id;
        /* 
        <AssignmentStatement>(56402)
          <Member>(56399)click_bitmap
            <Member>(5820)click_metadata
              <PathExpression>(5819)
                meta
          <PathExpression>(56400)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Action>(60150)
      <Annotations>(5865)
      <ParameterList>(5835)
      <BlockStatement>(60159) */
    @name(".act_set_bitmap") action act_set_bitmap_0(/* 
        <Parameter>(5837)
          <Annotations>(3)
          <Type_Bits>(1012) */
bit<64> bitmap) /* 
      <BlockStatement>(60159) */
    {
        /* 
        <AssignmentStatement>(56428)
          <Member>(56425)click_bitmap
            <Member>(5855)click_metadata
              <PathExpression>(5854)
                meta
          <PathExpression>(56426)
            bitmap */
        meta.click_metadata.click_bitmap = bitmap;
    }
    /* 
    <P4Table>(50496)
      <Annotations>(5985)
      <TableProperties>(50502) */
    @name("tbl_pipeline_start") table tbl_pipeline_start_0 {
        /* 
        <Property>(50504) */
        actions = /* 
          <ActionList>(50505)
            <ActionListElement>(50507)
            <ActionListElement>(50515)
            <ActionListElement>(9183) */
        {
            /* 
            <ActionListElement>(50507)
              <Annotations>(3)
              <MethodCallExpression>(50508)
                <PathExpression>(50511)
                  act_set_chain_0/act_set_chain
                <Vector<Type>>(9164), size=0
                <Vector<Expression>>(9165), size=0 */
            act_set_chain_0();
            /* 
            <ActionListElement>(50515)
              <Annotations>(3)
              <MethodCallExpression>(50516)
                <PathExpression>(50519)
                  act_set_bitmap_0/act_set_bitmap
                <Vector<Type>>(9170), size=0
                <Vector<Expression>>(9171), size=0 */
            act_set_bitmap_0();
            /* 
            <ActionListElement>(9183)
              <Annotations>(9176)
                <Annotation>(9173)
              <MethodCallExpression>(9182)
                <PathExpression>(9178)
                  NoAction
                <Vector<Type>>(9180), size=0
                <Vector<Expression>>(9181), size=0 */
            @defaultonly NoAction();
        }
        /* 
        <Property>(33938) */
        key = /* 
          <Key>(33939)
            <KeyElement>(33941)
            <KeyElement>(33954)
            <KeyElement>(33966) */
        {
/* 
              <KeyElement>(33941)
                <Annotations>(33952)
                <Member>(5884)src_addr
                  <Member>(5912)ipv4
                    <PathExpression>(5911)
                      hdr
                <PathExpression>(5913)
                  ternary */
                        hdr.ipv4.src_addr: ternary @name("hdr.ipv4.src_addr") ;
/* 
              <KeyElement>(33954)
                <Annotations>(33964)
                <Member>(5916)dst_addr
                  <Member>(5944)ipv4
                    <PathExpression>(5943)
                      hdr
                <PathExpression>(5945)
                  ternary */
                        hdr.ipv4.dst_addr: ternary @name("hdr.ipv4.dst_addr") ;
/* 
              <KeyElement>(33966)
                <Annotations>(33976)
                <Member>(5948)proto
                  <Member>(5976)ipv4
                    <PathExpression>(5975)
                      hdr
                <PathExpression>(5977)
                  ternary */
                        hdr.ipv4.proto   : ternary @name("hdr.ipv4.proto") ;
        }
        /* 
        <Property>(9212) */
        default_action = /* 
          <ExpressionValue>(9211)
            <MethodCallExpression>(9209)
              <PathExpression>(9206)
                NoAction
              <Vector<Type>>(9210), size=0
              <Vector<Expression>>(9208), size=0 */
        NoAction();
    }
    apply /* 
    <BlockStatement>(60246) */
    {
        /* 
      <MethodCallStatement>(56573)
        <MethodCallExpression>(56572)
          <Member>(56571)apply
            <PathExpression>(50585)
              tbl_pipeline_start_0/tbl_pipeline_start
          <Vector<Type>>(5996), size=0
          <Vector<Expression>>(56546), size=0 */
        tbl_pipeline_start_0.apply();
    }
}

/* 
  <P4Control>(6029) */
/* 
    <Type_Control>(6024)
      <Annotations>(3)
      <TypeParameters>(6022)
      <ParameterList>(6005) */
control module_sflow(/* 
        <Parameter>(6009)
          <Annotations>(3)
          <Type_Name>(6008) */
inout headers hdr, /* 
        <Parameter>(6014)
          <Annotations>(3)
          <Type_Name>(6013) */
inout metadata meta, /* 
        <Parameter>(6019)
          <Annotations>(3)
          <Type_Name>(6018) */
inout standard_metadata_t standard_metadata) {
    apply /* 
    <BlockStatement>(6026) */
    {
    }
}

/* 
  <P4Control>(60277) */
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
    <Declaration_Instance>(50627)
      <Annotations>(6060)
        <Annotation>(6058)
      <Type_Name>(6055)
        pipeline_start
      <Vector<Expression>>(6062), size=0 */
    @name("pipeline_start") pipeline_start() pipeline_start_1;
    /* 
    <Declaration_Instance>(50638)
      <Annotations>(6071)
        <Annotation>(6069)
      <Type_Name>(6066)
        module_sflow
      <Vector<Expression>>(6073), size=0 */
    @name("module_sflow") module_sflow() module_sflow_1;
    apply /* 
    <BlockStatement>(60315) */
    {
        /* 
      <IfStatement>(60317) */
        if ((meta.click_metadata.click_bitmap & 64w1) == 64w0) 
            /* 
        <MethodCallStatement>(56683)
          <MethodCallExpression>(56682)
            <Member>(56675)apply
              <PathExpression>(50665)
                pipeline_start_1/pipeline_start_0
            <Vector<Type>>(6114), size=0
            <Vector<Expression>>(56668), size=3
              <PathExpression>(56676)
                hdr
              <PathExpression>(56678)
                meta
              <PathExpression>(56680)
                standard_metadata */
            pipeline_start_1.apply(hdr, meta, standard_metadata);
        /* 
      <IfStatement>(60340) */
        if ((meta.click_metadata.click_bitmap & 64w2) == 64w0) 
            /* 
        <MethodCallStatement>(56733)
          <MethodCallExpression>(56732)
            <Member>(56725)apply
              <PathExpression>(50687)
                module_sflow_1/module_sflow_0
            <Vector<Type>>(6170), size=0
            <Vector<Expression>>(56718), size=3
              <PathExpression>(56726)
                hdr
              <PathExpression>(56728)
                meta
              <PathExpression>(56730)
                standard_metadata */
            module_sflow_1.apply(hdr, meta, standard_metadata);
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
  <P4Control>(60380) */
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
    <BlockStatement>(60395) */
    {
        /* 
      <MethodCallStatement>(56881)
        <MethodCallExpression>(56880)
          <Member>(56878)emit
            <PathExpression>(6550)
              packet
          <Vector<Type>>(22943), size=1
            <Type_Name>(22944)
              ethernet_t
          <Vector<Expression>>(56835), size=1
            <Member>(56879)ethernet
              <PathExpression>(6528)
                hdr */
        packet.emit<ethernet_t>(hdr.ethernet);
        /* 
      <MethodCallStatement>(56987)
        <MethodCallExpression>(56986)
          <Member>(56984)emit
            <PathExpression>(6557)
              packet
          <Vector<Type>>(22954), size=1
            <Type_Name>(22955)
              ipv6_t
          <Vector<Expression>>(56941), size=1
            <Member>(56985)ipv6
              <PathExpression>(6528)
                hdr */
        packet.emit<ipv6_t>(hdr.ipv6);
        /* 
      <MethodCallStatement>(57093)
        <MethodCallExpression>(57092)
          <Member>(57090)emit
            <PathExpression>(6564)
              packet
          <Vector<Type>>(22965), size=1
            <Type_Name>(22966)
              ipv4_t
          <Vector<Expression>>(57047), size=1
            <Member>(57091)ipv4
              <PathExpression>(6528)
                hdr */
        packet.emit<ipv4_t>(hdr.ipv4);
        /* 
      <MethodCallStatement>(57199)
        <MethodCallExpression>(57198)
          <Member>(57196)emit
            <PathExpression>(6571)
              packet
          <Vector<Type>>(22976), size=1
            <Type_Name>(22977)
              udp_t
          <Vector<Expression>>(57153), size=1
            <Member>(57197)udp
              <PathExpression>(6528)
                hdr */
        packet.emit<udp_t>(hdr.udp);
        /* 
      <MethodCallStatement>(57305)
        <MethodCallExpression>(57304)
          <Member>(57302)emit
            <PathExpression>(6578)
              packet
          <Vector<Type>>(22987), size=1
            <Type_Name>(22988)
              tcp_t
          <Vector<Expression>>(57259), size=1
            <Member>(57303)tcp
              <PathExpression>(6528)
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
  <Declaration_Instance>(23024)
    <Annotations>(3)
    <Type_Specialized>(23053)
      <Type_Name>(6635)
      <Vector<Type>>(23048), size=2
    <Vector<Expression>>(6636), size=6
      <ConstructorCallExpression>(6640)
        <Type_Name>(6639)
          ParserImpl
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(6643)
        <Type_Name>(6642)
          verifyChecksum
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(6646)
        <Type_Name>(6645)
          ingress
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(6649)
        <Type_Name>(6648)
          egress
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(6652)
        <Type_Name>(6651)
          computeChecksum
        <Vector<Expression>>(6637), size=0
      <ConstructorCallExpression>(6655)
        <Type_Name>(6654)
          DeparserImpl
        <Vector<Expression>>(6637), size=0 */
/* 
    <Type_Specialized>(87012)
      <Type_Name>(6635)
        V1Switch
      <Vector<Type>>(87011), size=2
        <Type_Name>(23049)
        <Type_Name>(23051) */
V1Switch<headers, metadata>(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;
