#include "GeneratedTypes.h"

int MainRequest_read_version ( struct PortalInternal *p )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_read_version, 1);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_read_version, "MainRequest_read_version")) return 1;
    p->transport->write(p, &temp_working_addr, 0);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_read_version << 16) | 1, -1);
    return 0;
};

int MainRequest_writePacketData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_writePacketData, 6);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_writePacketData, "MainRequest_writePacketData")) return 1;
    p->transport->write(p, &temp_working_addr, (data[0]>>46));
    p->transport->write(p, &temp_working_addr, (data[0]>>14));
    p->transport->write(p, &temp_working_addr, (data[1]>>46)|(((unsigned long)data[0])<<18));
    p->transport->write(p, &temp_working_addr, (data[1]>>14));
    p->transport->write(p, &temp_working_addr, eop|(((unsigned long)sop)<<1)|(((unsigned long)mask[1])<<2)|(((unsigned long)mask[0])<<10)|(((unsigned long)data[1])<<18));
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_writePacketData << 16) | 6, -1);
    return 0;
};

int MainRequest_set_verbosity ( struct PortalInternal *p, const uint32_t verbosity )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_set_verbosity, 2);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_set_verbosity, "MainRequest_set_verbosity")) return 1;
    p->transport->write(p, &temp_working_addr, verbosity);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_set_verbosity << 16) | 2, -1);
    return 0;
};

int MainRequest_writePktGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_writePktGenData, 6);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_writePktGenData, "MainRequest_writePktGenData")) return 1;
    p->transport->write(p, &temp_working_addr, (data[0]>>46));
    p->transport->write(p, &temp_working_addr, (data[0]>>14));
    p->transport->write(p, &temp_working_addr, (data[1]>>46)|(((unsigned long)data[0])<<18));
    p->transport->write(p, &temp_working_addr, (data[1]>>14));
    p->transport->write(p, &temp_working_addr, eop|(((unsigned long)sop)<<1)|(((unsigned long)mask[1])<<2)|(((unsigned long)mask[0])<<10)|(((unsigned long)data[1])<<18));
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_writePktGenData << 16) | 6, -1);
    return 0;
};

int MainRequest_pktgen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t ipg, const uint32_t inst )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_pktgen_start, 4);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_pktgen_start, "MainRequest_pktgen_start")) return 1;
    p->transport->write(p, &temp_working_addr, iteration);
    p->transport->write(p, &temp_working_addr, ipg);
    p->transport->write(p, &temp_working_addr, inst);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_pktgen_start << 16) | 4, -1);
    return 0;
};

int MainRequest_pktgen_stop ( struct PortalInternal *p )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_pktgen_stop, 1);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_pktgen_stop, "MainRequest_pktgen_stop")) return 1;
    p->transport->write(p, &temp_working_addr, 0);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_pktgen_stop << 16) | 1, -1);
    return 0;
};

int MainRequest_pktcap_start ( struct PortalInternal *p, const uint32_t iteration )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_pktcap_start, 2);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_pktcap_start, "MainRequest_pktcap_start")) return 1;
    p->transport->write(p, &temp_working_addr, iteration);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_pktcap_start << 16) | 2, -1);
    return 0;
};

int MainRequest_pktcap_stop ( struct PortalInternal *p )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_pktcap_stop, 1);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_pktcap_stop, "MainRequest_pktcap_stop")) return 1;
    p->transport->write(p, &temp_working_addr, 0);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_pktcap_stop << 16) | 1, -1);
    return 0;
};

int MainRequest_writeMetaGenData ( struct PortalInternal *p, const bsvvector_Luint64_t_L2 data, const bsvvector_Luint8_t_L2 mask, const uint8_t sop, const uint8_t eop )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_writeMetaGenData, 6);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_writeMetaGenData, "MainRequest_writeMetaGenData")) return 1;
    p->transport->write(p, &temp_working_addr, (data[0]>>46));
    p->transport->write(p, &temp_working_addr, (data[0]>>14));
    p->transport->write(p, &temp_working_addr, (data[1]>>46)|(((unsigned long)data[0])<<18));
    p->transport->write(p, &temp_working_addr, (data[1]>>14));
    p->transport->write(p, &temp_working_addr, eop|(((unsigned long)sop)<<1)|(((unsigned long)mask[1])<<2)|(((unsigned long)mask[0])<<10)|(((unsigned long)data[1])<<18));
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_writeMetaGenData << 16) | 6, -1);
    return 0;
};

int MainRequest_metagen_start ( struct PortalInternal *p, const uint32_t iteration, const uint32_t freq )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_metagen_start, 3);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_metagen_start, "MainRequest_metagen_start")) return 1;
    p->transport->write(p, &temp_working_addr, iteration);
    p->transport->write(p, &temp_working_addr, freq);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_metagen_start << 16) | 3, -1);
    return 0;
};

int MainRequest_metagen_stop ( struct PortalInternal *p )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_metagen_stop, 1);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_metagen_stop, "MainRequest_metagen_stop")) return 1;
    p->transport->write(p, &temp_working_addr, 0);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_metagen_stop << 16) | 1, -1);
    return 0;
};

int MainRequest_read_pktcap_perf_info ( struct PortalInternal *p )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_read_pktcap_perf_info, 1);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_read_pktcap_perf_info, "MainRequest_read_pktcap_perf_info")) return 1;
    p->transport->write(p, &temp_working_addr, 0);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_read_pktcap_perf_info << 16) | 1, -1);
    return 0;
};

int MainRequest_module_l2_switch_dmac_add_entry ( struct PortalInternal *p, const ModuleL2SwitchDmacReqT key, const ModuleL2SwitchDmacRspT val )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_module_l2_switch_dmac_add_entry, 3);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_module_l2_switch_dmac_add_entry, "MainRequest_module_l2_switch_dmac_add_entry")) return 1;
    p->transport->write(p, &temp_working_addr, (key.dst_addr>>22)|(((unsigned long)key.padding)<<26));
    p->transport->write(p, &temp_working_addr, val._port|(((unsigned long)val._action)<<9)|(((unsigned long)key.dst_addr)<<10));
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_module_l2_switch_dmac_add_entry << 16) | 3, -1);
    return 0;
};

int MainRequest_module_l2_switch_smac_add_entry ( struct PortalInternal *p, const ModuleL2SwitchSmacReqT key, const ModuleL2SwitchSmacRspT val )
{
    volatile unsigned int* temp_working_addr_start = p->transport->mapchannelReq(p, CHAN_NUM_MainRequest_module_l2_switch_smac_add_entry, 4);
    volatile unsigned int* temp_working_addr = temp_working_addr_start;
    if (p->transport->busywait(p, CHAN_NUM_MainRequest_module_l2_switch_smac_add_entry, "MainRequest_module_l2_switch_smac_add_entry")) return 1;
    p->transport->write(p, &temp_working_addr, (key.src_addr>>31)|(((unsigned long)key.padding)<<17));
    p->transport->write(p, &temp_working_addr, val._action|(((unsigned long)key.src_addr)<<1));
    p->transport->write(p, &temp_working_addr, val._receiver);
    p->transport->send(p, temp_working_addr_start, (CHAN_NUM_MainRequest_module_l2_switch_smac_add_entry << 16) | 4, -1);
    return 0;
};

MainRequestCb MainRequestProxyReq = {
    portal_disconnect,
    MainRequest_read_version,
    MainRequest_writePacketData,
    MainRequest_set_verbosity,
    MainRequest_writePktGenData,
    MainRequest_pktgen_start,
    MainRequest_pktgen_stop,
    MainRequest_pktcap_start,
    MainRequest_pktcap_stop,
    MainRequest_writeMetaGenData,
    MainRequest_metagen_start,
    MainRequest_metagen_stop,
    MainRequest_read_pktcap_perf_info,
    MainRequest_module_l2_switch_dmac_add_entry,
    MainRequest_module_l2_switch_smac_add_entry,
};
MainRequestCb *pMainRequestProxyReq = &MainRequestProxyReq;

const uint32_t MainRequest_reqinfo = 0xe0018;
const char * MainRequest_methodSignatures()
{
    return "{\"module_l2_switch_dmac_add_entry\": [\"long\", \"long\"], \"read_pktcap_perf_info\": [], \"read_version\": [], \"writeMetaGenData\": [\"long\", \"long\", \"long\", \"long\"], \"metagen_start\": [\"long\", \"long\"], \"writePktGenData\": [\"long\", \"long\", \"long\", \"long\"], \"writePacketData\": [\"long\", \"long\", \"long\", \"long\"], \"pktcap_stop\": [], \"pktcap_start\": [\"long\"], \"pktgen_stop\": [], \"set_verbosity\": [\"long\"], \"pktgen_start\": [\"long\", \"long\", \"long\"], \"metagen_stop\": [], \"module_l2_switch_smac_add_entry\": [\"long\", \"long\"]}";
}

int MainRequest_handleMessage(struct PortalInternal *p, unsigned int channel, int messageFd)
{
    static int runaway = 0;
    int   tmp __attribute__ ((unused));
    int tmpfd __attribute__ ((unused));
    MainRequestData tempdata __attribute__ ((unused));
    memset(&tempdata, 0, sizeof(tempdata));
    volatile unsigned int* temp_working_addr = p->transport->mapchannelInd(p, channel);
    switch (channel) {
    case CHAN_NUM_MainRequest_read_version: {
        
        p->transport->recv(p, temp_working_addr, 0, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);((MainRequestCb *)p->cb)->read_version(p);
      } break;
    case CHAN_NUM_MainRequest_writePacketData: {
        
        p->transport->recv(p, temp_working_addr, 5, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePacketData.data[0] = (uint64_t)(((uint64_t)(((tmp)&0x3fffful))<<46));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePacketData.data[0] |= (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<14));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePacketData.data[1] = (uint64_t)(((uint64_t)(((tmp)&0x3fffful))<<46));
        tempdata.writePacketData.data[0] |= (uint64_t)(((tmp>>18)&0x3ffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePacketData.data[1] |= (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<14));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePacketData.eop = (uint8_t)(((tmp)&0x1ul));
        tempdata.writePacketData.sop = (uint8_t)(((tmp>>1)&0x1ul));
        tempdata.writePacketData.mask[1] = (uint8_t)(((tmp>>2)&0xfful));
        tempdata.writePacketData.mask[0] = (uint8_t)(((tmp>>10)&0xfful));
        tempdata.writePacketData.data[1] |= (uint64_t)(((tmp>>18)&0x3ffful));((MainRequestCb *)p->cb)->writePacketData(p, tempdata.writePacketData.data, tempdata.writePacketData.mask, tempdata.writePacketData.sop, tempdata.writePacketData.eop);
      } break;
    case CHAN_NUM_MainRequest_set_verbosity: {
        
        p->transport->recv(p, temp_working_addr, 1, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.set_verbosity.verbosity = (uint32_t)(((tmp)&0xfffffffful));((MainRequestCb *)p->cb)->set_verbosity(p, tempdata.set_verbosity.verbosity);
      } break;
    case CHAN_NUM_MainRequest_writePktGenData: {
        
        p->transport->recv(p, temp_working_addr, 5, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePktGenData.data[0] = (uint64_t)(((uint64_t)(((tmp)&0x3fffful))<<46));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePktGenData.data[0] |= (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<14));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePktGenData.data[1] = (uint64_t)(((uint64_t)(((tmp)&0x3fffful))<<46));
        tempdata.writePktGenData.data[0] |= (uint64_t)(((tmp>>18)&0x3ffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePktGenData.data[1] |= (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<14));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writePktGenData.eop = (uint8_t)(((tmp)&0x1ul));
        tempdata.writePktGenData.sop = (uint8_t)(((tmp>>1)&0x1ul));
        tempdata.writePktGenData.mask[1] = (uint8_t)(((tmp>>2)&0xfful));
        tempdata.writePktGenData.mask[0] = (uint8_t)(((tmp>>10)&0xfful));
        tempdata.writePktGenData.data[1] |= (uint64_t)(((tmp>>18)&0x3ffful));((MainRequestCb *)p->cb)->writePktGenData(p, tempdata.writePktGenData.data, tempdata.writePktGenData.mask, tempdata.writePktGenData.sop, tempdata.writePktGenData.eop);
      } break;
    case CHAN_NUM_MainRequest_pktgen_start: {
        
        p->transport->recv(p, temp_working_addr, 3, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.pktgen_start.iteration = (uint32_t)(((tmp)&0xfffffffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.pktgen_start.ipg = (uint32_t)(((tmp)&0xfffffffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.pktgen_start.inst = (uint32_t)(((tmp)&0xfffffffful));((MainRequestCb *)p->cb)->pktgen_start(p, tempdata.pktgen_start.iteration, tempdata.pktgen_start.ipg, tempdata.pktgen_start.inst);
      } break;
    case CHAN_NUM_MainRequest_pktgen_stop: {
        
        p->transport->recv(p, temp_working_addr, 0, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);((MainRequestCb *)p->cb)->pktgen_stop(p);
      } break;
    case CHAN_NUM_MainRequest_pktcap_start: {
        
        p->transport->recv(p, temp_working_addr, 1, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.pktcap_start.iteration = (uint32_t)(((tmp)&0xfffffffful));((MainRequestCb *)p->cb)->pktcap_start(p, tempdata.pktcap_start.iteration);
      } break;
    case CHAN_NUM_MainRequest_pktcap_stop: {
        
        p->transport->recv(p, temp_working_addr, 0, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);((MainRequestCb *)p->cb)->pktcap_stop(p);
      } break;
    case CHAN_NUM_MainRequest_writeMetaGenData: {
        
        p->transport->recv(p, temp_working_addr, 5, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writeMetaGenData.data[0] = (uint64_t)(((uint64_t)(((tmp)&0x3fffful))<<46));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writeMetaGenData.data[0] |= (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<14));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writeMetaGenData.data[1] = (uint64_t)(((uint64_t)(((tmp)&0x3fffful))<<46));
        tempdata.writeMetaGenData.data[0] |= (uint64_t)(((tmp>>18)&0x3ffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writeMetaGenData.data[1] |= (uint64_t)(((uint64_t)(((tmp)&0xfffffffful))<<14));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.writeMetaGenData.eop = (uint8_t)(((tmp)&0x1ul));
        tempdata.writeMetaGenData.sop = (uint8_t)(((tmp>>1)&0x1ul));
        tempdata.writeMetaGenData.mask[1] = (uint8_t)(((tmp>>2)&0xfful));
        tempdata.writeMetaGenData.mask[0] = (uint8_t)(((tmp>>10)&0xfful));
        tempdata.writeMetaGenData.data[1] |= (uint64_t)(((tmp>>18)&0x3ffful));((MainRequestCb *)p->cb)->writeMetaGenData(p, tempdata.writeMetaGenData.data, tempdata.writeMetaGenData.mask, tempdata.writeMetaGenData.sop, tempdata.writeMetaGenData.eop);
      } break;
    case CHAN_NUM_MainRequest_metagen_start: {
        
        p->transport->recv(p, temp_working_addr, 2, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.metagen_start.iteration = (uint32_t)(((tmp)&0xfffffffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.metagen_start.freq = (uint32_t)(((tmp)&0xfffffffful));((MainRequestCb *)p->cb)->metagen_start(p, tempdata.metagen_start.iteration, tempdata.metagen_start.freq);
      } break;
    case CHAN_NUM_MainRequest_metagen_stop: {
        
        p->transport->recv(p, temp_working_addr, 0, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);((MainRequestCb *)p->cb)->metagen_stop(p);
      } break;
    case CHAN_NUM_MainRequest_read_pktcap_perf_info: {
        
        p->transport->recv(p, temp_working_addr, 0, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);((MainRequestCb *)p->cb)->read_pktcap_perf_info(p);
      } break;
    case CHAN_NUM_MainRequest_module_l2_switch_dmac_add_entry: {
        
        p->transport->recv(p, temp_working_addr, 2, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.module_l2_switch_dmac_add_entry.key.dst_addr = (uint64_t)(((uint64_t)(((tmp)&0x3fffffful))<<22));
        tempdata.module_l2_switch_dmac_add_entry.key.padding = (uint8_t)(((tmp>>26)&0x3ful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.module_l2_switch_dmac_add_entry.val._port = (uint16_t)(((tmp)&0x1fful));
        tempdata.module_l2_switch_dmac_add_entry.val._action = (uint8_t)(((tmp>>9)&0x1ul));
        tempdata.module_l2_switch_dmac_add_entry.key.dst_addr |= (uint64_t)(((tmp>>10)&0x3ffffful));((MainRequestCb *)p->cb)->module_l2_switch_dmac_add_entry(p, tempdata.module_l2_switch_dmac_add_entry.key, tempdata.module_l2_switch_dmac_add_entry.val);
      } break;
    case CHAN_NUM_MainRequest_module_l2_switch_smac_add_entry: {
        
        p->transport->recv(p, temp_working_addr, 3, &tmpfd);
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.module_l2_switch_smac_add_entry.key.src_addr = (uint64_t)(((uint64_t)(((tmp)&0x1fffful))<<31));
        tempdata.module_l2_switch_smac_add_entry.key.padding = (uint8_t)(((tmp>>17)&0x3ful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.module_l2_switch_smac_add_entry.val._action = (uint8_t)(((tmp)&0x1ul));
        tempdata.module_l2_switch_smac_add_entry.key.src_addr |= (uint64_t)(((tmp>>1)&0x7ffffffful));
        tmp = p->transport->read(p, &temp_working_addr);
        tempdata.module_l2_switch_smac_add_entry.val._receiver = (uint32_t)(((tmp)&0xfffffffful));((MainRequestCb *)p->cb)->module_l2_switch_smac_add_entry(p, tempdata.module_l2_switch_smac_add_entry.key, tempdata.module_l2_switch_smac_add_entry.val);
      } break;
    default:
        PORTAL_PRINTF("MainRequest_handleMessage: unknown channel 0x%x\n", channel);
        if (runaway++ > 10) {
            PORTAL_PRINTF("MainRequest_handleMessage: too many bogus indications, exiting\n");
#ifndef __KERNEL__
            exit(-1);
#endif
        }
        return 0;
    }
    return 0;
}
