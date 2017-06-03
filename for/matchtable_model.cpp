#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t ModuleForForEndReqT;
typedef uint64_t ModuleForForEndRspT;
std::unordered_map<ModuleForForEndReqT, ModuleForForEndRspT> tbl_module_for_for_end;
extern "C" ModuleForForEndReqT matchtable_read_module_for_for_end(ModuleForForEndReqT rdata) {
    auto it = tbl_module_for_for_end.find(rdata);
    if (it != tbl_module_for_for_end.end()) {
        return tbl_module_for_for_end[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_for_for_end(ModuleForForEndReqT wdata, ModuleForForEndRspT action){
    tbl_module_for_for_end[wdata] = action;
}
typedef uint64_t ModuleForForInitReqT;
typedef uint64_t ModuleForForInitRspT;
std::unordered_map<ModuleForForInitReqT, ModuleForForInitRspT> tbl_module_for_for_init;
extern "C" ModuleForForInitReqT matchtable_read_module_for_for_init(ModuleForForInitReqT rdata) {
    auto it = tbl_module_for_for_init.find(rdata);
    if (it != tbl_module_for_for_init.end()) {
        return tbl_module_for_for_init[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_for_for_init(ModuleForForInitReqT wdata, ModuleForForInitRspT action){
    tbl_module_for_for_init[wdata] = action;
}
typedef uint64_t ModuleForForLoopReqT;
typedef uint64_t ModuleForForLoopRspT;
std::unordered_map<ModuleForForLoopReqT, ModuleForForLoopRspT> tbl_module_for_for_loop;
extern "C" ModuleForForLoopReqT matchtable_read_module_for_for_loop(ModuleForForLoopReqT rdata) {
    auto it = tbl_module_for_for_loop.find(rdata);
    if (it != tbl_module_for_for_loop.end()) {
        return tbl_module_for_for_loop[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_for_for_loop(ModuleForForLoopReqT wdata, ModuleForForLoopRspT action){
    tbl_module_for_for_loop[wdata] = action;
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
