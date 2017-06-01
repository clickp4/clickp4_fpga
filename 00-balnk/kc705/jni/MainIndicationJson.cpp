#include "GeneratedTypes.h"
#ifdef PORTAL_JSON
#include "jsoncpp/json/json.h"

int MainIndicationJson_read_version_rsp ( struct PortalInternal *p, const uint32_t version )
{
    Json::Value request;
    request.append(Json::Value("read_version_rsp"));
    request.append((Json::UInt64)version);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainIndication_read_version_rsp);
    return 0;
};

int MainIndicationJson_read_pktcap_perf_info_resp ( struct PortalInternal *p, const PktCapRec rec )
{
    Json::Value request;
    request.append(Json::Value("read_pktcap_perf_info_resp"));
    Json::Value _recValue;
    _recValue["__type__"]="PktCapRec";
    _recValue["data_bytes"] = (Json::UInt64)rec.data_bytes;
    _recValue["idle_cycles"] = (Json::UInt64)rec.idle_cycles;
    _recValue["total_cycles"] = (Json::UInt64)rec.total_cycles;
    request.append(_recValue);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainIndication_read_pktcap_perf_info_resp);
    return 0;
};

MainIndicationCb MainIndicationJsonProxyReq = {
    portal_disconnect,
    MainIndicationJson_read_version_rsp,
    MainIndicationJson_read_pktcap_perf_info_resp,
};
MainIndicationCb *pMainIndicationJsonProxyReq = &MainIndicationJsonProxyReq;
const char * MainIndicationJson_methodSignatures()
{
    return "{\"read_pktcap_perf_info_resp\": [\"long\"], \"read_version_rsp\": [\"long\"]}";
}

int MainIndicationJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd)
{
    static int runaway = 0;
    int   tmp __attribute__ ((unused));
    int tmpfd __attribute__ ((unused));
    MainIndicationData tempdata __attribute__ ((unused));
    memset(&tempdata, 0, sizeof(tempdata));
    Json::Value msg = Json::Value(connectalJsonReceive(p));
    switch (channel) {
    case CHAN_NUM_MainIndication_read_version_rsp: {
        ((MainIndicationCb *)p->cb)->read_version_rsp(p, tempdata.read_version_rsp.version);
      } break;
    case CHAN_NUM_MainIndication_read_pktcap_perf_info_resp: {
        ((MainIndicationCb *)p->cb)->read_pktcap_perf_info_resp(p, tempdata.read_pktcap_perf_info_resp.rec);
      } break;
    default:
        PORTAL_PRINTF("MainIndicationJson_handleMessage: unknown channel 0x%x\n", channel);
        if (runaway++ > 10) {
            PORTAL_PRINTF("MainIndicationJson_handleMessage: too many bogus indications, exiting\n");
#ifndef __KERNEL__
            exit(-1);
#endif
        }
        return 0;
    }
    return 0;
}
#endif /* PORTAL_JSON */
