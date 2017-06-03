#ifndef __GENERATED_TYPES__
#define __GENERATED_TYPES__
#include "portal.h"
#ifdef __cplusplus
extern "C" {
#endif
typedef enum ChannelType { ChannelType_Read, ChannelType_Write,  } ChannelType;
typedef struct DmaDbgRec {
    uint32_t x : 32;
    uint32_t y : 32;
    uint32_t z : 32;
    uint32_t w : 32;
} DmaDbgRec;
typedef enum DmaErrorType { DmaErrorNone, DmaErrorSGLIdOutOfRange_r, DmaErrorSGLIdOutOfRange_w, DmaErrorMMUOutOfRange_r, DmaErrorMMUOutOfRange_w, DmaErrorOffsetOutOfRange, DmaErrorSGLIdInvalid, DmaErrorTileTagOutOfRange,  } DmaErrorType;
typedef uint32_t SpecialTypeForSendingFd;
typedef enum TileState { Idle, Stopped, Running,  } TileState;
typedef struct TileControl {
    uint8_t tile : 2;
    TileState state;
} TileControl;
typedef enum XsimIfcNames { XsimIfcNames_XsimMsgRequest, XsimIfcNames_XsimMsgIndication,  } XsimIfcNames;
typedef struct ModuleL2SwitchDmacReqT {
    uint8_t padding : 6;
    uint64_t dst_addr : 48;
} ModuleL2SwitchDmacReqT;
typedef struct ModuleL2SwitchDmacRspT {
    uint8_t _action : 1;
    uint16_t _port : 9;
} ModuleL2SwitchDmacRspT;
typedef struct ModuleL2SwitchSmacReqT {
    uint8_t padding : 6;
    uint64_t src_addr : 48;
} ModuleL2SwitchSmacReqT;
typedef struct ModuleL2SwitchSmacRspT {
    uint8_t _action : 1;
    uint32_t _receiver : 32;
} ModuleL2SwitchSmacRspT;
typedef uint64_t LUInt;
typedef int64_t LInt;
typedef struct PktBuffDbgRec {
    uint64_t sopEnq : 64;
    uint64_t eopEnq : 64;
    uint64_t sopDeq : 64;
    uint64_t eopDeq : 64;
} PktBuffDbgRec;
typedef struct MemMgmtDbgRec {
    uint64_t allocCnt : 64;
    uint64_t freeCnt : 64;
    uint64_t allocCompleted : 64;
    uint64_t freeCompleted : 64;
    uint64_t errorCode : 64;
    uint64_t lastIdFreed : 64;
    uint64_t lastIdAllocated : 64;
    uint64_t freeStarted : 64;
    uint64_t firstSegment : 64;
    uint64_t lastSegment : 64;
    uint64_t currSegment : 64;
    uint64_t invalidSegment : 64;
} MemMgmtDbgRec;
typedef struct TDMDbgRec {
    uint64_t fwdReqCnt : 64;
    uint64_t sendCnt : 64;
} TDMDbgRec;
typedef struct MatchTableDbgRec {
    uint64_t matchRequestCount : 64;
    uint64_t matchResponseCount : 64;
    uint64_t matchValidCount : 64;
    uint64_t lastMatchIdx : 64;
    uint64_t lastMatchRequest : 64;
} MatchTableDbgRec;
typedef struct TxThruDbgRec {
    uint64_t goodputCount : 64;
    uint64_t idleCount : 64;
} TxThruDbgRec;
typedef struct IPv4RouteDbgRec {
    uint64_t lookupCnt : 64;
} IPv4RouteDbgRec;
typedef struct ThruDbgRec {
    uint64_t data_bytes : 64;
    uint64_t sops : 64;
    uint64_t eops : 64;
    uint64_t idle_cycles : 64;
    uint64_t total_cycles : 64;
} ThruDbgRec;
typedef struct TableDbgRec {
    LUInt pktIn;
    LUInt pktOut;
} TableDbgRec;
typedef struct IngressDbgRec {
    LUInt fwdCount;
    TableDbgRec accTbl;
    TableDbgRec seqTbl;
    TableDbgRec dmacTbl;
} IngressDbgRec;
typedef struct HostChannelDbgRec {
    LUInt paxosCount;
    LUInt ipv6Count;
    LUInt udpCount;
    PktBuffDbgRec pktBuff;
} HostChannelDbgRec;
typedef struct TxChannelDbgRec {
    LUInt egressCount;
    PktBuffDbgRec pktBuff;
} TxChannelDbgRec;
typedef struct IngressPerfRec {
    uint32_t ingress_start_time : 32;
    uint32_t ingress_end_time : 32;
    uint32_t acceptor_start_time : 32;
    uint32_t acceptor_end_time : 32;
    uint32_t sequence_start_time : 32;
    uint32_t sequence_end_time : 32;
} IngressPerfRec;
typedef struct ParserPerfRec {
    uint32_t parser_start_time : 32;
    uint32_t parser_end_time : 32;
} ParserPerfRec;
typedef struct PktCapRec {
    uint64_t data_bytes : 64;
    uint64_t idle_cycles : 64;
    uint64_t total_cycles : 64;
} PktCapRec;
typedef struct DeparserPerfRec {
    uint32_t deparser_start_time : 32;
    uint32_t deparser_end_time : 32;
} DeparserPerfRec;
typedef enum IfcNames { IfcNamesNone=0, PlatformIfcNames_MemServerRequestS2H=1, PlatformIfcNames_MMURequestS2H=2, PlatformIfcNames_MemServerIndicationH2S=3, PlatformIfcNames_MMUIndicationH2S=4, IfcNames_MainIndicationH2S=5, IfcNames_MemServerIndicationH2S=6, IfcNames_MainRequestS2H=7,  } IfcNames;


int MemServerRequest_addrTrans ( struct PortalInternal *p, const uint32_t sglId, const uint32_t offset );
int MemServerRequest_setTileState ( struct PortalInternal *p, const TileControl tc );
int MemServerRequest_stateDbg ( struct PortalInternal *p, const ChannelType rc );
int MemServerRequest_memoryTraffic ( struct PortalInternal *p, const ChannelType rc );
enum { CHAN_NUM_MemServerRequest_addrTrans,CHAN_NUM_MemServerRequest_setTileState,CHAN_NUM_MemServerRequest_stateDbg,CHAN_NUM_MemServerRequest_memoryTraffic};
extern const uint32_t MemServerRequest_reqinfo;

typedef struct {
    uint32_t sglId;
    uint32_t offset;
} MemServerRequest_addrTransData;
typedef struct {
    TileControl tc;
} MemServerRequest_setTileStateData;
typedef struct {
    ChannelType rc;
} MemServerRequest_stateDbgData;
typedef struct {
    ChannelType rc;
} MemServerRequest_memoryTrafficData;
typedef union {
    MemServerRequest_addrTransData addrTrans;
    MemServerRequest_setTileStateData setTileState;
    MemServerRequest_stateDbgData stateDbg;
    MemServerRequest_memoryTrafficData memoryTraffic;
} MemServerRequestData;
int MemServerRequest_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*addrTrans) (  struct PortalInternal *p, const uint32_t sglId, const uint32_t offset );
    int (*setTileState) (  struct PortalInternal *p, const TileControl tc );
    int (*stateDbg) (  struct PortalInternal *p, const ChannelType rc );
    int (*memoryTraffic) (  struct PortalInternal *p, const ChannelType rc );
} MemServerRequestCb;
extern MemServerRequestCb MemServerRequestProxyReq;

int MemServerRequestJson_addrTrans ( struct PortalInternal *p, const uint32_t sglId, const uint32_t offset );
int MemServerRequestJson_setTileState ( struct PortalInternal *p, const TileControl tc );
int MemServerRequestJson_stateDbg ( struct PortalInternal *p, const ChannelType rc );
int MemServerRequestJson_memoryTraffic ( struct PortalInternal *p, const ChannelType rc );
int MemServerRequestJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern MemServerRequestCb MemServerRequestJsonProxyReq;

int MMURequest_sglist ( struct PortalInternal *p, const uint32_t sglId, const uint32_t sglIndex, const uint64_t addr, const uint32_t len );
int MMURequest_region ( struct PortalInternal *p, const uint32_t sglId, const uint64_t barr12, const uint32_t index12, const uint64_t barr8, const uint32_t index8, const uint64_t barr4, const uint32_t index4, const uint64_t barr0, const uint32_t index0 );
int MMURequest_idRequest ( struct PortalInternal *p, const SpecialTypeForSendingFd fd );
int MMURequest_idReturn ( struct PortalInternal *p, const uint32_t sglId );
int MMURequest_setInterface ( struct PortalInternal *p, const uint32_t interfaceId, const uint32_t sglId );
enum { CHAN_NUM_MMURequest_sglist,CHAN_NUM_MMURequest_region,CHAN_NUM_MMURequest_idRequest,CHAN_NUM_MMURequest_idReturn,CHAN_NUM_MMURequest_setInterface};
extern const uint32_t MMURequest_reqinfo;

typedef struct {
    uint32_t sglId;
    uint32_t sglIndex;
    uint64_t addr;
    uint32_t len;
} MMURequest_sglistData;
typedef struct {
    uint32_t sglId;
    uint64_t barr12;
    uint32_t index12;
    uint64_t barr8;
    uint32_t index8;
    uint64_t barr4;
    uint32_t index4;
    uint64_t barr0;
    uint32_t index0;
} MMURequest_regionData;
typedef struct {
    SpecialTypeForSendingFd fd;
} MMURequest_idRequestData;
typedef struct {
    uint32_t sglId;
} MMURequest_idReturnData;
typedef struct {
    uint32_t interfaceId;
    uint32_t sglId;
} MMURequest_setInterfaceData;
typedef union {
    MMURequest_sglistData sglist;
    MMURequest_regionData region;
    MMURequest_idRequestData idRequest;
    MMURequest_idReturnData idReturn;
    MMURequest_setInterfaceData setInterface;
} MMURequestData;
int MMURequest_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*sglist) (  struct PortalInternal *p, const uint32_t sglId, const uint32_t sglIndex, const uint64_t addr, const uint32_t len );
    int (*region) (  struct PortalInternal *p, const uint32_t sglId, const uint64_t barr12, const uint32_t index12, const uint64_t barr8, const uint32_t index8, const uint64_t barr4, const uint32_t index4, const uint64_t barr0, const uint32_t index0 );
    int (*idRequest) (  struct PortalInternal *p, const SpecialTypeForSendingFd fd );
    int (*idReturn) (  struct PortalInternal *p, const uint32_t sglId );
    int (*setInterface) (  struct PortalInternal *p, const uint32_t interfaceId, const uint32_t sglId );
} MMURequestCb;
extern MMURequestCb MMURequestProxyReq;

int MMURequestJson_sglist ( struct PortalInternal *p, const uint32_t sglId, const uint32_t sglIndex, const uint64_t addr, const uint32_t len );
int MMURequestJson_region ( struct PortalInternal *p, const uint32_t sglId, const uint64_t barr12, const uint32_t index12, const uint64_t barr8, const uint32_t index8, const uint64_t barr4, const uint32_t index4, const uint64_t barr0, const uint32_t index0 );
int MMURequestJson_idRequest ( struct PortalInternal *p, const SpecialTypeForSendingFd fd );
int MMURequestJson_idReturn ( struct PortalInternal *p, const uint32_t sglId );
int MMURequestJson_setInterface ( struct PortalInternal *p, const uint32_t interfaceId, const uint32_t sglId );
int MMURequestJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern MMURequestCb MMURequestJsonProxyReq;

int MemServerIndication_addrResponse ( struct PortalInternal *p, const uint64_t physAddr );
int MemServerIndication_reportStateDbg ( struct PortalInternal *p, const DmaDbgRec rec );
int MemServerIndication_reportMemoryTraffic ( struct PortalInternal *p, const uint64_t words );
int MemServerIndication_error ( struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra );
enum { CHAN_NUM_MemServerIndication_addrResponse,CHAN_NUM_MemServerIndication_reportStateDbg,CHAN_NUM_MemServerIndication_reportMemoryTraffic,CHAN_NUM_MemServerIndication_error};
extern const uint32_t MemServerIndication_reqinfo;

typedef struct {
    uint64_t physAddr;
} MemServerIndication_addrResponseData;
typedef struct {
    DmaDbgRec rec;
} MemServerIndication_reportStateDbgData;
typedef struct {
    uint64_t words;
} MemServerIndication_reportMemoryTrafficData;
typedef struct {
    uint32_t code;
    uint32_t sglId;
    uint64_t offset;
    uint64_t extra;
} MemServerIndication_errorData;
typedef union {
    MemServerIndication_addrResponseData addrResponse;
    MemServerIndication_reportStateDbgData reportStateDbg;
    MemServerIndication_reportMemoryTrafficData reportMemoryTraffic;
    MemServerIndication_errorData error;
} MemServerIndicationData;
int MemServerIndication_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*addrResponse) (  struct PortalInternal *p, const uint64_t physAddr );
    int (*reportStateDbg) (  struct PortalInternal *p, const DmaDbgRec rec );
    int (*reportMemoryTraffic) (  struct PortalInternal *p, const uint64_t words );
    int (*error) (  struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra );
} MemServerIndicationCb;
extern MemServerIndicationCb MemServerIndicationProxyReq;

int MemServerIndicationJson_addrResponse ( struct PortalInternal *p, const uint64_t physAddr );
int MemServerIndicationJson_reportStateDbg ( struct PortalInternal *p, const DmaDbgRec rec );
int MemServerIndicationJson_reportMemoryTraffic ( struct PortalInternal *p, const uint64_t words );
int MemServerIndicationJson_error ( struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra );
int MemServerIndicationJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern MemServerIndicationCb MemServerIndicationJsonProxyReq;

int MMUIndication_idResponse ( struct PortalInternal *p, const uint32_t sglId );
int MMUIndication_configResp ( struct PortalInternal *p, const uint32_t sglId );
int MMUIndication_error ( struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra );
enum { CHAN_NUM_MMUIndication_idResponse,CHAN_NUM_MMUIndication_configResp,CHAN_NUM_MMUIndication_error};
extern const uint32_t MMUIndication_reqinfo;

typedef struct {
    uint32_t sglId;
} MMUIndication_idResponseData;
typedef struct {
    uint32_t sglId;
} MMUIndication_configRespData;
typedef struct {
    uint32_t code;
    uint32_t sglId;
    uint64_t offset;
    uint64_t extra;
} MMUIndication_errorData;
typedef union {
    MMUIndication_idResponseData idResponse;
    MMUIndication_configRespData configResp;
    MMUIndication_errorData error;
} MMUIndicationData;
int MMUIndication_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*idResponse) (  struct PortalInternal *p, const uint32_t sglId );
    int (*configResp) (  struct PortalInternal *p, const uint32_t sglId );
    int (*error) (  struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra );
} MMUIndicationCb;
extern MMUIndicationCb MMUIndicationProxyReq;

int MMUIndicationJson_idResponse ( struct PortalInternal *p, const uint32_t sglId );
int MMUIndicationJson_configResp ( struct PortalInternal *p, const uint32_t sglId );
int MMUIndicationJson_error ( struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra );
int MMUIndicationJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern MMUIndicationCb MMUIndicationJsonProxyReq;

int XsimMsgRequest_msgSink ( struct PortalInternal *p, const uint32_t portal, const uint32_t data );
int XsimMsgRequest_msgSinkFd ( struct PortalInternal *p, const uint32_t portal, const SpecialTypeForSendingFd data );
enum { CHAN_NUM_XsimMsgRequest_msgSink,CHAN_NUM_XsimMsgRequest_msgSinkFd};
extern const uint32_t XsimMsgRequest_reqinfo;

typedef struct {
    uint32_t portal;
    uint32_t data;
} XsimMsgRequest_msgSinkData;
typedef struct {
    uint32_t portal;
    SpecialTypeForSendingFd data;
} XsimMsgRequest_msgSinkFdData;
typedef union {
    XsimMsgRequest_msgSinkData msgSink;
    XsimMsgRequest_msgSinkFdData msgSinkFd;
} XsimMsgRequestData;
int XsimMsgRequest_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*msgSink) (  struct PortalInternal *p, const uint32_t portal, const uint32_t data );
    int (*msgSinkFd) (  struct PortalInternal *p, const uint32_t portal, const SpecialTypeForSendingFd data );
} XsimMsgRequestCb;
extern XsimMsgRequestCb XsimMsgRequestProxyReq;

int XsimMsgRequestJson_msgSink ( struct PortalInternal *p, const uint32_t portal, const uint32_t data );
int XsimMsgRequestJson_msgSinkFd ( struct PortalInternal *p, const uint32_t portal, const SpecialTypeForSendingFd data );
int XsimMsgRequestJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern XsimMsgRequestCb XsimMsgRequestJsonProxyReq;

int XsimMsgIndication_msgSource ( struct PortalInternal *p, const uint32_t portal, const uint32_t data );
enum { CHAN_NUM_XsimMsgIndication_msgSource};
extern const uint32_t XsimMsgIndication_reqinfo;

typedef struct {
    uint32_t portal;
    uint32_t data;
} XsimMsgIndication_msgSourceData;
typedef union {
    XsimMsgIndication_msgSourceData msgSource;
} XsimMsgIndicationData;
int XsimMsgIndication_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*msgSource) (  struct PortalInternal *p, const uint32_t portal, const uint32_t data );
} XsimMsgIndicationCb;
extern XsimMsgIndicationCb XsimMsgIndicationProxyReq;

int XsimMsgIndicationJson_msgSource ( struct PortalInternal *p, const uint32_t portal, const uint32_t data );
int XsimMsgIndicationJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern XsimMsgIndicationCb XsimMsgIndicationJsonProxyReq;

typedef uint64_t bsvvector_Luint64_t_L2[2];
typedef uint8_t bsvvector_Luint8_t_L2[2];
typedef uint64_t bsvvector_Luint64_t_L2[2];
typedef uint8_t bsvvector_Luint8_t_L2[2];
typedef uint64_t bsvvector_Luint64_t_L2[2];
typedef uint8_t bsvvector_Luint8_t_L2[2];
typedef uint64_t bsvvector_Luint64_t_L2[2];
typedef uint8_t bsvvector_Luint8_t_L2[2];
int MainRequest_read_version ( struct PortalInternal *p );
int MainRequest_writePacketData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
int MainRequest_set_verbosity ( struct PortalInternal *p, const uint32_t verbosity );
int MainRequest_writePktGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
int MainRequest_pktgen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t ipg, const uint32_t inst );
int MainRequest_pktgen_stop ( struct PortalInternal *p );
int MainRequest_pktcap_start ( struct PortalInternal *p, const uint32_t iteration );
int MainRequest_pktcap_stop ( struct PortalInternal *p );
int MainRequest_writeMetaGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
int MainRequest_metagen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t freq );
int MainRequest_metagen_stop ( struct PortalInternal *p );
int MainRequest_read_pktcap_perf_info ( struct PortalInternal *p );
int MainRequest_module_l2_switch_dmac_add_entry ( struct PortalInternal *p, const ModuleL2SwitchDmacReqT key, const ModuleL2SwitchDmacRspT val );
int MainRequest_module_l2_switch_smac_add_entry ( struct PortalInternal *p, const ModuleL2SwitchSmacReqT key, const ModuleL2SwitchSmacRspT val );
enum { CHAN_NUM_MainRequest_read_version,CHAN_NUM_MainRequest_writePacketData,CHAN_NUM_MainRequest_set_verbosity,CHAN_NUM_MainRequest_writePktGenData,CHAN_NUM_MainRequest_pktgen_start,CHAN_NUM_MainRequest_pktgen_stop,CHAN_NUM_MainRequest_pktcap_start,CHAN_NUM_MainRequest_pktcap_stop,CHAN_NUM_MainRequest_writeMetaGenData,CHAN_NUM_MainRequest_metagen_start,CHAN_NUM_MainRequest_metagen_stop,CHAN_NUM_MainRequest_read_pktcap_perf_info,CHAN_NUM_MainRequest_module_l2_switch_dmac_add_entry,CHAN_NUM_MainRequest_module_l2_switch_smac_add_entry};
extern const uint32_t MainRequest_reqinfo;

typedef struct {
        int padding;

} MainRequest_read_versionData;
typedef struct {
    bsvvector_Luint64_t_L2 data;
    bsvvector_Luint8_t_L2 mask;
    uint8_t sop;
    uint8_t eop;
} MainRequest_writePacketDataData;
typedef struct {
    uint32_t verbosity;
} MainRequest_set_verbosityData;
typedef struct {
    bsvvector_Luint64_t_L2 data;
    bsvvector_Luint8_t_L2 mask;
    uint8_t sop;
    uint8_t eop;
} MainRequest_writePktGenDataData;
typedef struct {
    uint32_t iteration;
    uint32_t ipg;
    uint32_t inst;
} MainRequest_pktgen_startData;
typedef struct {
        int padding;

} MainRequest_pktgen_stopData;
typedef struct {
    uint32_t iteration;
} MainRequest_pktcap_startData;
typedef struct {
        int padding;

} MainRequest_pktcap_stopData;
typedef struct {
    bsvvector_Luint64_t_L2 data;
    bsvvector_Luint8_t_L2 mask;
    uint8_t sop;
    uint8_t eop;
} MainRequest_writeMetaGenDataData;
typedef struct {
    uint32_t iteration;
    uint32_t freq;
} MainRequest_metagen_startData;
typedef struct {
        int padding;

} MainRequest_metagen_stopData;
typedef struct {
        int padding;

} MainRequest_read_pktcap_perf_infoData;
typedef struct {
    ModuleL2SwitchDmacReqT key;
    ModuleL2SwitchDmacRspT val;
} MainRequest_module_l2_switch_dmac_add_entryData;
typedef struct {
    ModuleL2SwitchSmacReqT key;
    ModuleL2SwitchSmacRspT val;
} MainRequest_module_l2_switch_smac_add_entryData;
typedef union {
    MainRequest_read_versionData read_version;
    MainRequest_writePacketDataData writePacketData;
    MainRequest_set_verbosityData set_verbosity;
    MainRequest_writePktGenDataData writePktGenData;
    MainRequest_pktgen_startData pktgen_start;
    MainRequest_pktgen_stopData pktgen_stop;
    MainRequest_pktcap_startData pktcap_start;
    MainRequest_pktcap_stopData pktcap_stop;
    MainRequest_writeMetaGenDataData writeMetaGenData;
    MainRequest_metagen_startData metagen_start;
    MainRequest_metagen_stopData metagen_stop;
    MainRequest_read_pktcap_perf_infoData read_pktcap_perf_info;
    MainRequest_module_l2_switch_dmac_add_entryData module_l2_switch_dmac_add_entry;
    MainRequest_module_l2_switch_smac_add_entryData module_l2_switch_smac_add_entry;
} MainRequestData;
int MainRequest_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*read_version) (  struct PortalInternal *p );
    int (*writePacketData) (  struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
    int (*set_verbosity) (  struct PortalInternal *p, const uint32_t verbosity );
    int (*writePktGenData) (  struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
    int (*pktgen_start) (  struct PortalInternal *p, const uint32_t iteration, const uint32_t ipg, const uint32_t inst );
    int (*pktgen_stop) (  struct PortalInternal *p );
    int (*pktcap_start) (  struct PortalInternal *p, const uint32_t iteration );
    int (*pktcap_stop) (  struct PortalInternal *p );
    int (*writeMetaGenData) (  struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
    int (*metagen_start) (  struct PortalInternal *p, const uint32_t iteration, const uint32_t freq );
    int (*metagen_stop) (  struct PortalInternal *p );
    int (*read_pktcap_perf_info) (  struct PortalInternal *p );
    int (*module_l2_switch_dmac_add_entry) (  struct PortalInternal *p, const ModuleL2SwitchDmacReqT key, const ModuleL2SwitchDmacRspT val );
    int (*module_l2_switch_smac_add_entry) (  struct PortalInternal *p, const ModuleL2SwitchSmacReqT key, const ModuleL2SwitchSmacRspT val );
} MainRequestCb;
extern MainRequestCb MainRequestProxyReq;

int MainRequestJson_read_version ( struct PortalInternal *p );
int MainRequestJson_writePacketData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
int MainRequestJson_set_verbosity ( struct PortalInternal *p, const uint32_t verbosity );
int MainRequestJson_writePktGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
int MainRequestJson_pktgen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t ipg, const uint32_t inst );
int MainRequestJson_pktgen_stop ( struct PortalInternal *p );
int MainRequestJson_pktcap_start ( struct PortalInternal *p, const uint32_t iteration );
int MainRequestJson_pktcap_stop ( struct PortalInternal *p );
int MainRequestJson_writeMetaGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop );
int MainRequestJson_metagen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t freq );
int MainRequestJson_metagen_stop ( struct PortalInternal *p );
int MainRequestJson_read_pktcap_perf_info ( struct PortalInternal *p );
int MainRequestJson_module_l2_switch_dmac_add_entry ( struct PortalInternal *p, const ModuleL2SwitchDmacReqT key, const ModuleL2SwitchDmacRspT val );
int MainRequestJson_module_l2_switch_smac_add_entry ( struct PortalInternal *p, const ModuleL2SwitchSmacReqT key, const ModuleL2SwitchSmacRspT val );
int MainRequestJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern MainRequestCb MainRequestJsonProxyReq;

typedef uint64_t bsvvector_Luint64_t_L2[2];
typedef uint8_t bsvvector_Luint8_t_L2[2];
int MainIndication_read_version_rsp ( struct PortalInternal *p, const uint32_t version );
int MainIndication_read_pktcap_perf_info_resp ( struct PortalInternal *p, const PktCapRec rec );
enum { CHAN_NUM_MainIndication_read_version_rsp,CHAN_NUM_MainIndication_read_pktcap_perf_info_resp};
extern const uint32_t MainIndication_reqinfo;

typedef struct {
    uint32_t version;
} MainIndication_read_version_rspData;
typedef struct {
    PktCapRec rec;
} MainIndication_read_pktcap_perf_info_respData;
typedef union {
    MainIndication_read_version_rspData read_version_rsp;
    MainIndication_read_pktcap_perf_info_respData read_pktcap_perf_info_resp;
} MainIndicationData;
int MainIndication_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
typedef struct {
    PORTAL_DISCONNECT disconnect;
    int (*read_version_rsp) (  struct PortalInternal *p, const uint32_t version );
    int (*read_pktcap_perf_info_resp) (  struct PortalInternal *p, const PktCapRec rec );
} MainIndicationCb;
extern MainIndicationCb MainIndicationProxyReq;

int MainIndicationJson_read_version_rsp ( struct PortalInternal *p, const uint32_t version );
int MainIndicationJson_read_pktcap_perf_info_resp ( struct PortalInternal *p, const PktCapRec rec );
int MainIndicationJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd);
extern MainIndicationCb MainIndicationJsonProxyReq;
#ifdef __cplusplus
}
#endif
#endif //__GENERATED_TYPES__
