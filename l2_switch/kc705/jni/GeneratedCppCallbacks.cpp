#include "GeneratedTypes.h"

#ifndef NO_CPP_PORTAL_CODE
extern const uint32_t ifcNamesNone = IfcNamesNone;
extern const uint32_t platformIfcNames_MemServerRequestS2H = PlatformIfcNames_MemServerRequestS2H;
extern const uint32_t platformIfcNames_MMURequestS2H = PlatformIfcNames_MMURequestS2H;
extern const uint32_t platformIfcNames_MemServerIndicationH2S = PlatformIfcNames_MemServerIndicationH2S;
extern const uint32_t platformIfcNames_MMUIndicationH2S = PlatformIfcNames_MMUIndicationH2S;
extern const uint32_t ifcNames_MainIndicationH2S = IfcNames_MainIndicationH2S;
extern const uint32_t ifcNames_MemServerIndicationH2S = IfcNames_MemServerIndicationH2S;
extern const uint32_t ifcNames_MainRequestS2H = IfcNames_MainRequestS2H;

/************** Start of MemServerRequestWrapper CPP ***********/
#include "MemServerRequest.h"
int MemServerRequestdisconnect_cb (struct PortalInternal *p) {
    (static_cast<MemServerRequestWrapper *>(p->parent))->disconnect();
    return 0;
};
int MemServerRequestaddrTrans_cb (  struct PortalInternal *p, const uint32_t sglId, const uint32_t offset ) {
    (static_cast<MemServerRequestWrapper *>(p->parent))->addrTrans ( sglId, offset);
    return 0;
};
int MemServerRequestsetTileState_cb (  struct PortalInternal *p, const TileControl tc ) {
    (static_cast<MemServerRequestWrapper *>(p->parent))->setTileState ( tc);
    return 0;
};
int MemServerRequeststateDbg_cb (  struct PortalInternal *p, const ChannelType rc ) {
    (static_cast<MemServerRequestWrapper *>(p->parent))->stateDbg ( rc);
    return 0;
};
int MemServerRequestmemoryTraffic_cb (  struct PortalInternal *p, const ChannelType rc ) {
    (static_cast<MemServerRequestWrapper *>(p->parent))->memoryTraffic ( rc);
    return 0;
};
MemServerRequestCb MemServerRequest_cbTable = {
    MemServerRequestdisconnect_cb,
    MemServerRequestaddrTrans_cb,
    MemServerRequestsetTileState_cb,
    MemServerRequeststateDbg_cb,
    MemServerRequestmemoryTraffic_cb,
};

/************** Start of MMURequestWrapper CPP ***********/
#include "MMURequest.h"
int MMURequestdisconnect_cb (struct PortalInternal *p) {
    (static_cast<MMURequestWrapper *>(p->parent))->disconnect();
    return 0;
};
int MMURequestsglist_cb (  struct PortalInternal *p, const uint32_t sglId, const uint32_t sglIndex, const uint64_t addr, const uint32_t len ) {
    (static_cast<MMURequestWrapper *>(p->parent))->sglist ( sglId, sglIndex, addr, len);
    return 0;
};
int MMURequestregion_cb (  struct PortalInternal *p, const uint32_t sglId, const uint64_t barr12, const uint32_t index12, const uint64_t barr8, const uint32_t index8, const uint64_t barr4, const uint32_t index4, const uint64_t barr0, const uint32_t index0 ) {
    (static_cast<MMURequestWrapper *>(p->parent))->region ( sglId, barr12, index12, barr8, index8, barr4, index4, barr0, index0);
    return 0;
};
int MMURequestidRequest_cb (  struct PortalInternal *p, const SpecialTypeForSendingFd fd ) {
    (static_cast<MMURequestWrapper *>(p->parent))->idRequest ( fd);
    return 0;
};
int MMURequestidReturn_cb (  struct PortalInternal *p, const uint32_t sglId ) {
    (static_cast<MMURequestWrapper *>(p->parent))->idReturn ( sglId);
    return 0;
};
int MMURequestsetInterface_cb (  struct PortalInternal *p, const uint32_t interfaceId, const uint32_t sglId ) {
    (static_cast<MMURequestWrapper *>(p->parent))->setInterface ( interfaceId, sglId);
    return 0;
};
MMURequestCb MMURequest_cbTable = {
    MMURequestdisconnect_cb,
    MMURequestsglist_cb,
    MMURequestregion_cb,
    MMURequestidRequest_cb,
    MMURequestidReturn_cb,
    MMURequestsetInterface_cb,
};

/************** Start of MemServerIndicationWrapper CPP ***********/
#include "MemServerIndication.h"
int MemServerIndicationdisconnect_cb (struct PortalInternal *p) {
    (static_cast<MemServerIndicationWrapper *>(p->parent))->disconnect();
    return 0;
};
int MemServerIndicationaddrResponse_cb (  struct PortalInternal *p, const uint64_t physAddr ) {
    (static_cast<MemServerIndicationWrapper *>(p->parent))->addrResponse ( physAddr);
    return 0;
};
int MemServerIndicationreportStateDbg_cb (  struct PortalInternal *p, const DmaDbgRec rec ) {
    (static_cast<MemServerIndicationWrapper *>(p->parent))->reportStateDbg ( rec);
    return 0;
};
int MemServerIndicationreportMemoryTraffic_cb (  struct PortalInternal *p, const uint64_t words ) {
    (static_cast<MemServerIndicationWrapper *>(p->parent))->reportMemoryTraffic ( words);
    return 0;
};
int MemServerIndicationerror_cb (  struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra ) {
    (static_cast<MemServerIndicationWrapper *>(p->parent))->error ( code, sglId, offset, extra);
    return 0;
};
MemServerIndicationCb MemServerIndication_cbTable = {
    MemServerIndicationdisconnect_cb,
    MemServerIndicationaddrResponse_cb,
    MemServerIndicationreportStateDbg_cb,
    MemServerIndicationreportMemoryTraffic_cb,
    MemServerIndicationerror_cb,
};

/************** Start of MMUIndicationWrapper CPP ***********/
#include "MMUIndication.h"
int MMUIndicationdisconnect_cb (struct PortalInternal *p) {
    (static_cast<MMUIndicationWrapper *>(p->parent))->disconnect();
    return 0;
};
int MMUIndicationidResponse_cb (  struct PortalInternal *p, const uint32_t sglId ) {
    (static_cast<MMUIndicationWrapper *>(p->parent))->idResponse ( sglId);
    return 0;
};
int MMUIndicationconfigResp_cb (  struct PortalInternal *p, const uint32_t sglId ) {
    (static_cast<MMUIndicationWrapper *>(p->parent))->configResp ( sglId);
    return 0;
};
int MMUIndicationerror_cb (  struct PortalInternal *p, const uint32_t code, const uint32_t sglId, const uint64_t offset, const uint64_t extra ) {
    (static_cast<MMUIndicationWrapper *>(p->parent))->error ( code, sglId, offset, extra);
    return 0;
};
MMUIndicationCb MMUIndication_cbTable = {
    MMUIndicationdisconnect_cb,
    MMUIndicationidResponse_cb,
    MMUIndicationconfigResp_cb,
    MMUIndicationerror_cb,
};

/************** Start of MainRequestWrapper CPP ***********/
#include "MainRequest.h"
int MainRequestdisconnect_cb (struct PortalInternal *p) {
    (static_cast<MainRequestWrapper *>(p->parent))->disconnect();
    return 0;
};
int MainRequestread_version_cb (  struct PortalInternal *p ) {
    (static_cast<MainRequestWrapper *>(p->parent))->read_version ( );
    return 0;
};
int MainRequestwritePacketData_cb (  struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) {
    (static_cast<MainRequestWrapper *>(p->parent))->writePacketData ( data, mask, sop, eop);
    return 0;
};
int MainRequestset_verbosity_cb (  struct PortalInternal *p, const uint32_t verbosity ) {
    (static_cast<MainRequestWrapper *>(p->parent))->set_verbosity ( verbosity);
    return 0;
};
int MainRequestwritePktGenData_cb (  struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) {
    (static_cast<MainRequestWrapper *>(p->parent))->writePktGenData ( data, mask, sop, eop);
    return 0;
};
int MainRequestpktgen_start_cb (  struct PortalInternal *p, const uint32_t iteration, const uint32_t ipg, const uint32_t inst ) {
    (static_cast<MainRequestWrapper *>(p->parent))->pktgen_start ( iteration, ipg, inst);
    return 0;
};
int MainRequestpktgen_stop_cb (  struct PortalInternal *p ) {
    (static_cast<MainRequestWrapper *>(p->parent))->pktgen_stop ( );
    return 0;
};
int MainRequestpktcap_start_cb (  struct PortalInternal *p, const uint32_t iteration ) {
    (static_cast<MainRequestWrapper *>(p->parent))->pktcap_start ( iteration);
    return 0;
};
int MainRequestpktcap_stop_cb (  struct PortalInternal *p ) {
    (static_cast<MainRequestWrapper *>(p->parent))->pktcap_stop ( );
    return 0;
};
int MainRequestwriteMetaGenData_cb (  struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) {
    (static_cast<MainRequestWrapper *>(p->parent))->writeMetaGenData ( data, mask, sop, eop);
    return 0;
};
int MainRequestmetagen_start_cb (  struct PortalInternal *p, const uint32_t iteration, const uint32_t freq ) {
    (static_cast<MainRequestWrapper *>(p->parent))->metagen_start ( iteration, freq);
    return 0;
};
int MainRequestmetagen_stop_cb (  struct PortalInternal *p ) {
    (static_cast<MainRequestWrapper *>(p->parent))->metagen_stop ( );
    return 0;
};
int MainRequestread_pktcap_perf_info_cb (  struct PortalInternal *p ) {
    (static_cast<MainRequestWrapper *>(p->parent))->read_pktcap_perf_info ( );
    return 0;
};
int MainRequestmodule_l2_switch_dmac_add_entry_cb (  struct PortalInternal *p, const ModuleL2SwitchDmacReqT key, const ModuleL2SwitchDmacRspT val ) {
    (static_cast<MainRequestWrapper *>(p->parent))->module_l2_switch_dmac_add_entry ( key, val);
    return 0;
};
int MainRequestmodule_l2_switch_smac_add_entry_cb (  struct PortalInternal *p, const ModuleL2SwitchSmacReqT key, const ModuleL2SwitchSmacRspT val ) {
    (static_cast<MainRequestWrapper *>(p->parent))->module_l2_switch_smac_add_entry ( key, val);
    return 0;
};
MainRequestCb MainRequest_cbTable = {
    MainRequestdisconnect_cb,
    MainRequestread_version_cb,
    MainRequestwritePacketData_cb,
    MainRequestset_verbosity_cb,
    MainRequestwritePktGenData_cb,
    MainRequestpktgen_start_cb,
    MainRequestpktgen_stop_cb,
    MainRequestpktcap_start_cb,
    MainRequestpktcap_stop_cb,
    MainRequestwriteMetaGenData_cb,
    MainRequestmetagen_start_cb,
    MainRequestmetagen_stop_cb,
    MainRequestread_pktcap_perf_info_cb,
    MainRequestmodule_l2_switch_dmac_add_entry_cb,
    MainRequestmodule_l2_switch_smac_add_entry_cb,
};

/************** Start of MainIndicationWrapper CPP ***********/
#include "MainIndication.h"
int MainIndicationdisconnect_cb (struct PortalInternal *p) {
    (static_cast<MainIndicationWrapper *>(p->parent))->disconnect();
    return 0;
};
int MainIndicationread_version_rsp_cb (  struct PortalInternal *p, const uint32_t version ) {
    (static_cast<MainIndicationWrapper *>(p->parent))->read_version_rsp ( version);
    return 0;
};
int MainIndicationread_pktcap_perf_info_resp_cb (  struct PortalInternal *p, const PktCapRec rec ) {
    (static_cast<MainIndicationWrapper *>(p->parent))->read_pktcap_perf_info_resp ( rec);
    return 0;
};
MainIndicationCb MainIndication_cbTable = {
    MainIndicationdisconnect_cb,
    MainIndicationread_version_rsp_cb,
    MainIndicationread_pktcap_perf_info_resp_cb,
};
#endif //NO_CPP_PORTAL_CODE
