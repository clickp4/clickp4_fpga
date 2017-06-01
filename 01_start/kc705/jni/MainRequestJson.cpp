#include "GeneratedTypes.h"
#ifdef PORTAL_JSON
#include "jsoncpp/json/json.h"

int MainRequestJson_read_version ( struct PortalInternal *p )
{
    Json::Value request;
    request.append(Json::Value("read_version"));
    

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_read_version);
    return 0;
};

int MainRequestJson_writePacketData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop )
{
    Json::Value request;
    request.append(Json::Value("writePacketData"));
    Json::Value dataVector;
    dataVector.append((Json::UInt64)data[0]);
    dataVector.append((Json::UInt64)data[1]);
    request.append(dataVector);
    Json::Value maskVector;
    maskVector.append((Json::UInt64)mask[0]);
    maskVector.append((Json::UInt64)mask[1]);
    request.append(maskVector);
    request.append((Json::UInt64)sop);
    request.append((Json::UInt64)eop);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_writePacketData);
    return 0;
};

int MainRequestJson_set_verbosity ( struct PortalInternal *p, const uint32_t verbosity )
{
    Json::Value request;
    request.append(Json::Value("set_verbosity"));
    request.append((Json::UInt64)verbosity);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_set_verbosity);
    return 0;
};

int MainRequestJson_writePktGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop )
{
    Json::Value request;
    request.append(Json::Value("writePktGenData"));
    Json::Value dataVector;
    dataVector.append((Json::UInt64)data[0]);
    dataVector.append((Json::UInt64)data[1]);
    request.append(dataVector);
    Json::Value maskVector;
    maskVector.append((Json::UInt64)mask[0]);
    maskVector.append((Json::UInt64)mask[1]);
    request.append(maskVector);
    request.append((Json::UInt64)sop);
    request.append((Json::UInt64)eop);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_writePktGenData);
    return 0;
};

int MainRequestJson_pktgen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t ipg, const uint32_t inst )
{
    Json::Value request;
    request.append(Json::Value("pktgen_start"));
    request.append((Json::UInt64)iteration);
    request.append((Json::UInt64)ipg);
    request.append((Json::UInt64)inst);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_pktgen_start);
    return 0;
};

int MainRequestJson_pktgen_stop ( struct PortalInternal *p )
{
    Json::Value request;
    request.append(Json::Value("pktgen_stop"));
    

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_pktgen_stop);
    return 0;
};

int MainRequestJson_pktcap_start ( struct PortalInternal *p, const uint32_t iteration )
{
    Json::Value request;
    request.append(Json::Value("pktcap_start"));
    request.append((Json::UInt64)iteration);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_pktcap_start);
    return 0;
};

int MainRequestJson_pktcap_stop ( struct PortalInternal *p )
{
    Json::Value request;
    request.append(Json::Value("pktcap_stop"));
    

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_pktcap_stop);
    return 0;
};

int MainRequestJson_writeMetaGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop )
{
    Json::Value request;
    request.append(Json::Value("writeMetaGenData"));
    Json::Value dataVector;
    dataVector.append((Json::UInt64)data[0]);
    dataVector.append((Json::UInt64)data[1]);
    request.append(dataVector);
    Json::Value maskVector;
    maskVector.append((Json::UInt64)mask[0]);
    maskVector.append((Json::UInt64)mask[1]);
    request.append(maskVector);
    request.append((Json::UInt64)sop);
    request.append((Json::UInt64)eop);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_writeMetaGenData);
    return 0;
};

int MainRequestJson_metagen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t freq )
{
    Json::Value request;
    request.append(Json::Value("metagen_start"));
    request.append((Json::UInt64)iteration);
    request.append((Json::UInt64)freq);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_metagen_start);
    return 0;
};

int MainRequestJson_metagen_stop ( struct PortalInternal *p )
{
    Json::Value request;
    request.append(Json::Value("metagen_stop"));
    

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_metagen_stop);
    return 0;
};

int MainRequestJson_read_pktcap_perf_info ( struct PortalInternal *p )
{
    Json::Value request;
    request.append(Json::Value("read_pktcap_perf_info"));
    

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_read_pktcap_perf_info);
    return 0;
};

int MainRequestJson_pipeline_start_tbl_pipeline_start_add_entry ( struct PortalInternal *p, const PipelineStartTblPipelineStartReqT key, const PipelineStartTblPipelineStartRspT val )
{
    Json::Value request;
    request.append(Json::Value("pipeline_start_tbl_pipeline_start_add_entry"));
    Json::Value _keyValue;
    _keyValue["__type__"]="PipelineStartTblPipelineStartReqT";
    _keyValue["src_addr"] = (Json::UInt64)key.src_addr;
    _keyValue["dst_addr"] = (Json::UInt64)key.dst_addr;
    _keyValue["proto"] = (Json::UInt64)key.proto;
    request.append(_keyValue);
    Json::Value _valValue;
    _valValue["__type__"]="PipelineStartTblPipelineStartRspT";
    _valValue["_action"] = (Json::UInt64)val._action;
    request.append(_valValue);

    std::string requestjson = Json::FastWriter().write(request);;
    connectalJsonSend(p, requestjson.c_str(), (int)CHAN_NUM_MainRequest_pipeline_start_tbl_pipeline_start_add_entry);
    return 0;
};

MainRequestCb MainRequestJsonProxyReq = {
    portal_disconnect,
    MainRequestJson_read_version,
    MainRequestJson_writePacketData,
    MainRequestJson_set_verbosity,
    MainRequestJson_writePktGenData,
    MainRequestJson_pktgen_start,
    MainRequestJson_pktgen_stop,
    MainRequestJson_pktcap_start,
    MainRequestJson_pktcap_stop,
    MainRequestJson_writeMetaGenData,
    MainRequestJson_metagen_start,
    MainRequestJson_metagen_stop,
    MainRequestJson_read_pktcap_perf_info,
    MainRequestJson_pipeline_start_tbl_pipeline_start_add_entry,
};
MainRequestCb *pMainRequestJsonProxyReq = &MainRequestJsonProxyReq;
const char * MainRequestJson_methodSignatures()
{
    return "{\"read_pktcap_perf_info\": [], \"read_version\": [], \"writeMetaGenData\": [\"long\", \"long\", \"long\", \"long\"], \"metagen_start\": [\"long\", \"long\"], \"writePktGenData\": [\"long\", \"long\", \"long\", \"long\"], \"writePacketData\": [\"long\", \"long\", \"long\", \"long\"], \"pktcap_stop\": [], \"pktcap_start\": [\"long\"], \"pktgen_stop\": [], \"set_verbosity\": [\"long\"], \"pktgen_start\": [\"long\", \"long\", \"long\"], \"pipeline_start_tbl_pipeline_start_add_entry\": [\"long\", \"long\"], \"metagen_stop\": []}";
}

int MainRequestJson_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd)
{
    static int runaway = 0;
    int   tmp __attribute__ ((unused));
    int tmpfd __attribute__ ((unused));
    MainRequestData tempdata __attribute__ ((unused));
    memset(&tempdata, 0, sizeof(tempdata));
    Json::Value msg = Json::Value(connectalJsonReceive(p));
    switch (channel) {
    case CHAN_NUM_MainRequest_read_version: {
        ((MainRequestCb *)p->cb)->read_version(p);
      } break;
    case CHAN_NUM_MainRequest_writePacketData: {
        ((MainRequestCb *)p->cb)->writePacketData(p, tempdata.writePacketData.data, tempdata.writePacketData.mask, tempdata.writePacketData.sop, tempdata.writePacketData.eop);
      } break;
    case CHAN_NUM_MainRequest_set_verbosity: {
        ((MainRequestCb *)p->cb)->set_verbosity(p, tempdata.set_verbosity.verbosity);
      } break;
    case CHAN_NUM_MainRequest_writePktGenData: {
        ((MainRequestCb *)p->cb)->writePktGenData(p, tempdata.writePktGenData.data, tempdata.writePktGenData.mask, tempdata.writePktGenData.sop, tempdata.writePktGenData.eop);
      } break;
    case CHAN_NUM_MainRequest_pktgen_start: {
        ((MainRequestCb *)p->cb)->pktgen_start(p, tempdata.pktgen_start.iteration, tempdata.pktgen_start.ipg, tempdata.pktgen_start.inst);
      } break;
    case CHAN_NUM_MainRequest_pktgen_stop: {
        ((MainRequestCb *)p->cb)->pktgen_stop(p);
      } break;
    case CHAN_NUM_MainRequest_pktcap_start: {
        ((MainRequestCb *)p->cb)->pktcap_start(p, tempdata.pktcap_start.iteration);
      } break;
    case CHAN_NUM_MainRequest_pktcap_stop: {
        ((MainRequestCb *)p->cb)->pktcap_stop(p);
      } break;
    case CHAN_NUM_MainRequest_writeMetaGenData: {
        ((MainRequestCb *)p->cb)->writeMetaGenData(p, tempdata.writeMetaGenData.data, tempdata.writeMetaGenData.mask, tempdata.writeMetaGenData.sop, tempdata.writeMetaGenData.eop);
      } break;
    case CHAN_NUM_MainRequest_metagen_start: {
        ((MainRequestCb *)p->cb)->metagen_start(p, tempdata.metagen_start.iteration, tempdata.metagen_start.freq);
      } break;
    case CHAN_NUM_MainRequest_metagen_stop: {
        ((MainRequestCb *)p->cb)->metagen_stop(p);
      } break;
    case CHAN_NUM_MainRequest_read_pktcap_perf_info: {
        ((MainRequestCb *)p->cb)->read_pktcap_perf_info(p);
      } break;
    case CHAN_NUM_MainRequest_pipeline_start_tbl_pipeline_start_add_entry: {
        ((MainRequestCb *)p->cb)->pipeline_start_tbl_pipeline_start_add_entry(p, tempdata.pipeline_start_tbl_pipeline_start_add_entry.key, tempdata.pipeline_start_tbl_pipeline_start_add_entry.val);
      } break;
    default:
        PORTAL_PRINTF("MainRequestJson_handleMessage: unknown channel 0x%x\n", channel);
        if (runaway++ > 10) {
            PORTAL_PRINTF("MainRequestJson_handleMessage: too many bogus indications, exiting\n");
#ifndef __KERNEL__
            exit(-1);
#endif
        }
        return 0;
    }
    return 0;
}
#endif /* PORTAL_JSON */
