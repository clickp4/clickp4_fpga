#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t ModuleWhileWhileEqualReqT;
typedef uint64_t ModuleWhileWhileEqualRspT;
std::unordered_map<ModuleWhileWhileEqualReqT, ModuleWhileWhileEqualRspT> tbl_module_while_while_equal;
extern "C" ModuleWhileWhileEqualReqT matchtable_read_module_while_while_equal(ModuleWhileWhileEqualReqT rdata) {
    auto it = tbl_module_while_while_equal.find(rdata);
    if (it != tbl_module_while_while_equal.end()) {
        return tbl_module_while_while_equal[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_while_while_equal(ModuleWhileWhileEqualReqT wdata, ModuleWhileWhileEqualRspT action){
    tbl_module_while_while_equal[wdata] = action;
}
typedef uint64_t ModuleWhileWhileInitReqT;
typedef uint64_t ModuleWhileWhileInitRspT;
std::unordered_map<ModuleWhileWhileInitReqT, ModuleWhileWhileInitRspT> tbl_module_while_while_init;
extern "C" ModuleWhileWhileInitReqT matchtable_read_module_while_while_init(ModuleWhileWhileInitReqT rdata) {
    auto it = tbl_module_while_while_init.find(rdata);
    if (it != tbl_module_while_while_init.end()) {
        return tbl_module_while_while_init[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_while_while_init(ModuleWhileWhileInitReqT wdata, ModuleWhileWhileInitRspT action){
    tbl_module_while_while_init[wdata] = action;
}
typedef uint64_t ModuleWhileWhileLargeReqT;
typedef uint64_t ModuleWhileWhileLargeRspT;
std::unordered_map<ModuleWhileWhileLargeReqT, ModuleWhileWhileLargeRspT> tbl_module_while_while_large;
extern "C" ModuleWhileWhileLargeReqT matchtable_read_module_while_while_large(ModuleWhileWhileLargeReqT rdata) {
    auto it = tbl_module_while_while_large.find(rdata);
    if (it != tbl_module_while_while_large.end()) {
        return tbl_module_while_while_large[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_while_while_large(ModuleWhileWhileLargeReqT wdata, ModuleWhileWhileLargeRspT action){
    tbl_module_while_while_large[wdata] = action;
}
typedef uint64_t ModuleWhileWhileSmallReqT;
typedef uint64_t ModuleWhileWhileSmallRspT;
std::unordered_map<ModuleWhileWhileSmallReqT, ModuleWhileWhileSmallRspT> tbl_module_while_while_small;
extern "C" ModuleWhileWhileSmallReqT matchtable_read_module_while_while_small(ModuleWhileWhileSmallReqT rdata) {
    auto it = tbl_module_while_while_small.find(rdata);
    if (it != tbl_module_while_while_small.end()) {
        return tbl_module_while_while_small[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_while_while_small(ModuleWhileWhileSmallReqT wdata, ModuleWhileWhileSmallRspT action){
    tbl_module_while_while_small[wdata] = action;
}
typedef uint64_t PipelineStartTblPipelineStartReqT;
typedef uint64_t PipelineStartTblPipelineStartRspT;
std::unordered_map<PipelineStartTblPipelineStartReqT, PipelineStartTblPipelineStartRspT> tbl_pipeline_start_tbl_pipeline_start;
extern "C" PipelineStartTblPipelineStartReqT matchtable_read_pipeline_start_tbl_pipeline_start(PipelineStartTblPipelineStartReqT rdata) {
    auto it = tbl_pipeline_start_tbl_pipeline_start.find(rdata);
    if (it != tbl_pipeline_start_tbl_pipeline_start.end()) {
        return tbl_pipeline_start_tbl_pipeline_start[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_pipeline_start_tbl_pipeline_start(PipelineStartTblPipelineStartReqT wdata, PipelineStartTblPipelineStartRspT action){
    tbl_pipeline_start_tbl_pipeline_start[wdata] = action;
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
