#include "GeneratedTypes.h"
#ifndef _MAININDICATION_H_
#define _MAININDICATION_H_
#include "portal.h"

class MainIndicationProxy : public Portal {
    MainIndicationCb *cb;
public:
    MainIndicationProxy(int id, int tile = DEFAULT_TILE, MainIndicationCb *cbarg = &MainIndicationProxyReq, int bufsize = MainIndication_reqinfo, PortalPoller *poller = 0) :
        Portal(id, tile, bufsize, NULL, NULL, this, poller), cb(cbarg) {};
    MainIndicationProxy(int id, PortalTransportFunctions *transport, void *param, MainIndicationCb *cbarg = &MainIndicationProxyReq, int bufsize = MainIndication_reqinfo, PortalPoller *poller = 0) :
        Portal(id, DEFAULT_TILE, bufsize, NULL, NULL, transport, param, this, poller), cb(cbarg) {};
    MainIndicationProxy(int id, PortalPoller *poller) :
        Portal(id, DEFAULT_TILE, MainIndication_reqinfo, NULL, NULL, NULL, NULL, this, poller), cb(&MainIndicationProxyReq) {};
    int read_version_rsp ( const uint32_t version ) { return cb->read_version_rsp (&pint, version); };
    int read_pktcap_perf_info_resp ( const PktCapRec rec ) { return cb->read_pktcap_perf_info_resp (&pint, rec); };
};

extern MainIndicationCb MainIndication_cbTable;
class MainIndicationWrapper : public Portal {
public:
    MainIndicationWrapper(int id, int tile = DEFAULT_TILE, PORTAL_INDFUNC cba = MainIndication_handleMessage, int bufsize = MainIndication_reqinfo, PortalPoller *poller = 0) :
           Portal(id, tile, bufsize, cba, (void *)&MainIndication_cbTable, this, poller) {
    };
    MainIndicationWrapper(int id, PortalTransportFunctions *transport, void *param, PORTAL_INDFUNC cba = MainIndication_handleMessage, int bufsize = MainIndication_reqinfo, PortalPoller *poller=0):
           Portal(id, DEFAULT_TILE, bufsize, cba, (void *)&MainIndication_cbTable, transport, param, this, poller) {
    };
    MainIndicationWrapper(int id, PortalPoller *poller) :
           Portal(id, DEFAULT_TILE, MainIndication_reqinfo, MainIndication_handleMessage, (void *)&MainIndication_cbTable, this, poller) {
    };
    MainIndicationWrapper(int id, PortalTransportFunctions *transport, void *param, PortalPoller *poller):
           Portal(id, DEFAULT_TILE, MainIndication_reqinfo, MainIndication_handleMessage, (void *)&MainIndication_cbTable, transport, param, this, poller) {
    };
    virtual void disconnect(void) {
        printf("MainIndicationWrapper.disconnect called %d\n", pint.client_fd_number);
    };
    virtual void read_version_rsp ( const uint32_t version ) = 0;
    virtual void read_pktcap_perf_info_resp ( const PktCapRec rec ) = 0;
};
#endif // _MAININDICATION_H_
