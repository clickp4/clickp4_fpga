#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t ModuleL3SwitchForwardTableReqT;
typedef uint64_t ModuleL3SwitchForwardTableRspT;
std::unordered_map<ModuleL3SwitchForwardTableReqT, ModuleL3SwitchForwardTableRspT> tbl_module_l3_switch_forward_table;
extern "C" ModuleL3SwitchForwardTableReqT matchtable_read_module_l3_switch_forward_table(ModuleL3SwitchForwardTableReqT rdata) {
    auto it = tbl_module_l3_switch_forward_table.find(rdata);
    if (it != tbl_module_l3_switch_forward_table.end()) {
        return tbl_module_l3_switch_forward_table[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_l3_switch_forward_table(ModuleL3SwitchForwardTableReqT wdata, ModuleL3SwitchForwardTableRspT action){
    tbl_module_l3_switch_forward_table[wdata] = action;
}
typedef uint64_t ModuleL3SwitchIpv4NhopReqT;
typedef uint64_t ModuleL3SwitchIpv4NhopRspT;
std::unordered_map<ModuleL3SwitchIpv4NhopReqT, ModuleL3SwitchIpv4NhopRspT> tbl_module_l3_switch_ipv4_nhop;
extern "C" ModuleL3SwitchIpv4NhopReqT matchtable_read_module_l3_switch_ipv4_nhop(ModuleL3SwitchIpv4NhopReqT rdata) {
    auto it = tbl_module_l3_switch_ipv4_nhop.find(rdata);
    if (it != tbl_module_l3_switch_ipv4_nhop.end()) {
        return tbl_module_l3_switch_ipv4_nhop[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_l3_switch_ipv4_nhop(ModuleL3SwitchIpv4NhopReqT wdata, ModuleL3SwitchIpv4NhopRspT action){
    tbl_module_l3_switch_ipv4_nhop[wdata] = action;
}
typedef uint64_t ModuleL3SwitchSendFrameReqT;
typedef uint64_t ModuleL3SwitchSendFrameRspT;
std::unordered_map<ModuleL3SwitchSendFrameReqT, ModuleL3SwitchSendFrameRspT> tbl_module_l3_switch_send_frame;
extern "C" ModuleL3SwitchSendFrameReqT matchtable_read_module_l3_switch_send_frame(ModuleL3SwitchSendFrameReqT rdata) {
    auto it = tbl_module_l3_switch_send_frame.find(rdata);
    if (it != tbl_module_l3_switch_send_frame.end()) {
        return tbl_module_l3_switch_send_frame[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_l3_switch_send_frame(ModuleL3SwitchSendFrameReqT wdata, ModuleL3SwitchSendFrameRspT action){
    tbl_module_l3_switch_send_frame[wdata] = action;
}
#ifdef __cplusplus
}
#endif
#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#ifdef __cplusplus
}
#endif
