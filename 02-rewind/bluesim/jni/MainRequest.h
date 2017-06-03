#include "GeneratedTypes.h"
#ifndef _MAINREQUEST_H_
#define _MAINREQUEST_H_
#include "portal.h"

class MainRequestProxy : public Portal {
    MainRequestCb *cb;
public:
    MainRequestProxy(int id, int tile = DEFAULT_TILE, MainRequestCb *cbarg = &MainRequestProxyReq, int bufsize = MainRequest_reqinfo, PortalPoller *poller = 0) :
        Portal(id, tile, bufsize, NULL, NULL, this, poller), cb(cbarg) {};
    MainRequestProxy(int id, PortalTransportFunctions *transport, void *param, MainRequestCb *cbarg = &MainRequestProxyReq, int bufsize = MainRequest_reqinfo, PortalPoller *poller = 0) :
        Portal(id, DEFAULT_TILE, bufsize, NULL, NULL, transport, param, this, poller), cb(cbarg) {};
    MainRequestProxy(int id, PortalPoller *poller) :
        Portal(id, DEFAULT_TILE, MainRequest_reqinfo, NULL, NULL, NULL, NULL, this, poller), cb(&MainRequestProxyReq) {};
    int read_version (  ) { return cb->read_version (&pint); };
    int writePacketData ( const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) { return cb->writePacketData (&pint, data, mask, sop, eop); };
    int set_verbosity ( const uint32_t verbosity ) { return cb->set_verbosity (&pint, verbosity); };
    int writePktGenData ( const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) { return cb->writePktGenData (&pint, data, mask, sop, eop); };
    int pktgen_start ( const uint32_t iteration, const uint32_t ipg, const uint32_t inst ) { return cb->pktgen_start (&pint, iteration, ipg, inst); };
    int pktgen_stop (  ) { return cb->pktgen_stop (&pint); };
    int pktcap_start ( const uint32_t iteration ) { return cb->pktcap_start (&pint, iteration); };
    int pktcap_stop (  ) { return cb->pktcap_stop (&pint); };
    int writeMetaGenData ( const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) { return cb->writeMetaGenData (&pint, data, mask, sop, eop); };
    int metagen_start ( const uint32_t iteration, const uint32_t freq ) { return cb->metagen_start (&pint, iteration, freq); };
    int metagen_stop (  ) { return cb->metagen_stop (&pint); };
    int read_pktcap_perf_info (  ) { return cb->read_pktcap_perf_info (&pint); };
    int pipeline_rewind_rewind_table_add_entry ( const PipelineRewindRewindTableReqT key, const PipelineRewindRewindTableRspT val ) { return cb->pipeline_rewind_rewind_table_add_entry (&pint, key, val); };
};

extern MainRequestCb MainRequest_cbTable;
class MainRequestWrapper : public Portal {
public:
    MainRequestWrapper(int id, int tile = DEFAULT_TILE, PORTAL_INDFUNC cba = MainRequest_handleMessage, int bufsize = MainRequest_reqinfo, PortalPoller *poller = 0) :
           Portal(id, tile, bufsize, cba, (void *)&MainRequest_cbTable, this, poller) {
    };
    MainRequestWrapper(int id, PortalTransportFunctions *transport, void *param, PORTAL_INDFUNC cba = MainRequest_handleMessage, int bufsize = MainRequest_reqinfo, PortalPoller *poller=0):
           Portal(id, DEFAULT_TILE, bufsize, cba, (void *)&MainRequest_cbTable, transport, param, this, poller) {
    };
    MainRequestWrapper(int id, PortalPoller *poller) :
           Portal(id, DEFAULT_TILE, MainRequest_reqinfo, MainRequest_handleMessage, (void *)&MainRequest_cbTable, this, poller) {
    };
    MainRequestWrapper(int id, PortalTransportFunctions *transport, void *param, PortalPoller *poller):
           Portal(id, DEFAULT_TILE, MainRequest_reqinfo, MainRequest_handleMessage, (void *)&MainRequest_cbTable, transport, param, this, poller) {
    };
    virtual void disconnect(void) {
        printf("MainRequestWrapper.disconnect called %d\n", pint.client_fd_number);
    };
    virtual void read_version (  ) = 0;
    virtual void writePacketData ( const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) = 0;
    virtual void set_verbosity ( const uint32_t verbosity ) = 0;
    virtual void writePktGenData ( const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) = 0;
    virtual void pktgen_start ( const uint32_t iteration, const uint32_t ipg, const uint32_t inst ) = 0;
    virtual void pktgen_stop (  ) = 0;
    virtual void pktcap_start ( const uint32_t iteration ) = 0;
    virtual void pktcap_stop (  ) = 0;
    virtual void writeMetaGenData ( const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop ) = 0;
    virtual void metagen_start ( const uint32_t iteration, const uint32_t freq ) = 0;
    virtual void metagen_stop (  ) = 0;
    virtual void read_pktcap_perf_info (  ) = 0;
    virtual void pipeline_rewind_rewind_table_add_entry ( const PipelineRewindRewindTableReqT key, const PipelineRewindRewindTableRspT val ) = 0;
};
#endif // _MAINREQUEST_H_
