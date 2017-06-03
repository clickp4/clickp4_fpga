#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t ModuleL2SwitchDmacReqT;
typedef uint64_t ModuleL2SwitchDmacRspT;
std::unordered_map<ModuleL2SwitchDmacReqT, ModuleL2SwitchDmacRspT> tbl_module_l2_switch_dmac;
extern "C" ModuleL2SwitchDmacReqT matchtable_read_module_l2_switch_dmac(ModuleL2SwitchDmacReqT rdata) {
    auto it = tbl_module_l2_switch_dmac.find(rdata);
    if (it != tbl_module_l2_switch_dmac.end()) {
        return tbl_module_l2_switch_dmac[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_l2_switch_dmac(ModuleL2SwitchDmacReqT wdata, ModuleL2SwitchDmacRspT action){
    tbl_module_l2_switch_dmac[wdata] = action;
}
typedef uint64_t ModuleL2SwitchSmacReqT;
typedef uint64_t ModuleL2SwitchSmacRspT;
std::unordered_map<ModuleL2SwitchSmacReqT, ModuleL2SwitchSmacRspT> tbl_module_l2_switch_smac;
extern "C" ModuleL2SwitchSmacReqT matchtable_read_module_l2_switch_smac(ModuleL2SwitchSmacReqT rdata) {
    auto it = tbl_module_l2_switch_smac.find(rdata);
    if (it != tbl_module_l2_switch_smac.end()) {
        return tbl_module_l2_switch_smac[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_l2_switch_smac(ModuleL2SwitchSmacReqT wdata, ModuleL2SwitchSmacRspT action){
    tbl_module_l2_switch_smac[wdata] = action;
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
