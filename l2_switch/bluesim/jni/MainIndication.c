#include "GeneratedTypes.h"

int MainIndication_read_version_rsp ( struct PortalInternal *p, const uint32_t version )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainIndication_read_version_rsp, 2);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainIndication_read_version_rsp, "MainIndication_read_version_rsp")) return 1;
    p->transport->write(p, &temp_working_addr, version);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainIndication_read_version_rsp << 16) | 2, -1);
    return 0;
};

int MainIndication_read_pktcap_perf_info_resp ( struct PortalInternal *p, const PktCapRec rec )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainIndication_read_pktcap_perf_info_resp, 7);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainIndication_read_pktcap_perf_info_resp, "MainIndication_read_pktcap_perf_info_resp")) return 1;
    p->transport->write(p, &temp_working_addr, (rec.data_bytes>>32));
    p->transport->write(p, &temp_working_addr, rec.data_bytes);
    p->transport->write(p, &temp_working_addr, (rec.idle_cycles>>32));
    p->transport->write(p, &temp_working_addr, rec.idle_cycles);
    p->transport->write(p, &temp_working_addr, (rec.total_cycles>>32));
    p->transport->write(p, &temp_working_addr, rec.total_cycles);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainIndication_read_pktcap_perf_info_resp << 16) | 7, -1);
    return 0;
};

MainIndicationCb MainIndicationProxyReq = {
    portal_disconnect,
    MainIndication_read_version_rsp,
    MainIndication_read_pktcap_perf_info_resp,
};
MainIndicationCb *pMainIndicationProxyReq = &MainIndicationProxyReq;

const uint32_t MainIndication_reqinfo = 0x2001c;
const char * MainIndication_methodSignatures()
{
    return "{\"read_pktcap_perf_info_resp\": [\"long\"], \"read_version_rsp\": [\"long\"]}";
}

int MainIndication_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd)
{
    static int runaway = 0;
    int   tmp __attribute__ ((unused));
    int tmpfd __attribute__ ((unused));
    MainIndicationData tempdata __attribute__ ((unused));
    memset(&tempdata, 0, sizeof(tempdata));
    volatile unsigned int* temp_working_addr = p->transport->mapchannelInd(p, channel);
    switch (channel) {
    case CHAN_NUM_MainIndication_read_version_rsp: {
        
        p->transport->recv(p, temp_working_addr, 1, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.read_version_rsp.version = (uint32_t)(((tmp)&0xfffffffful));((MainIndicationCb *)p->cb)->read_version_rsp(p, tempdata.read_version_rsp.version);
      } break;
    case CHAN_NUM_MainIndication_read_pktcap_perf_info_resp: {
        
        p->transport->recv(p, temp_working_addr, 6, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.read_pktcap_perf_info_resp.rec.data_bytes = (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<32));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.read_pktcap_perf_info_resp.rec.data_bytes |= (uint64_t)(((tmp)&0xfffffffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.read_pktcap_perf_info_resp.rec.idle_cycles = (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<32));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.read_pktcap_perf_info_resp.rec.idle_cycles |= (uint64_t)(((tmp)&0xfffffffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.read_pktcap_perf_info_resp.rec.total_cycles = (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<32));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.read_pktcap_perf_info_resp.rec.total_cycles |= (uint64_t)(((tmp)&0xfffffffful));((MainIndicationCb *)p->cb)->read_pktcap_perf_info_resp(p, tempdata.read_pktcap_perf_info_resp.rec);
      } break;
    default:
        PORTAL_PRINTF("MainIndication_handleMessage: unknown channel 0x%x\n", channel);
        if (runaway++ > 10) {
            PORTAL_PRINTF("MainIndication_handleMessage: too many bogus indications, exiting\n");
#ifndef __KERNEL__
            exit(-1);
#endif
        }
        return 0;
    }
    return 0;
}
