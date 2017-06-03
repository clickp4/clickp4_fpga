#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t ModuleIfIfEqualReqT;
typedef uint64_t ModuleIfIfEqualRspT;
std::unordered_map<ModuleIfIfEqualReqT, ModuleIfIfEqualRspT> tbl_module_if_if_equal;
extern "C" ModuleIfIfEqualReqT matchtable_read_module_if_if_equal(ModuleIfIfEqualReqT rdata) {
    auto it = tbl_module_if_if_equal.find(rdata);
    if (it != tbl_module_if_if_equal.end()) {
        return tbl_module_if_if_equal[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_if_if_equal(ModuleIfIfEqualReqT wdata, ModuleIfIfEqualRspT action){
    tbl_module_if_if_equal[wdata] = action;
}
typedef uint64_t ModuleIfIfLargeReqT;
typedef uint64_t ModuleIfIfLargeRspT;
std::unordered_map<ModuleIfIfLargeReqT, ModuleIfIfLargeRspT> tbl_module_if_if_large;
extern "C" ModuleIfIfLargeReqT matchtable_read_module_if_if_large(ModuleIfIfLargeReqT rdata) {
    auto it = tbl_module_if_if_large.find(rdata);
    if (it != tbl_module_if_if_large.end()) {
        return tbl_module_if_if_large[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_if_if_large(ModuleIfIfLargeReqT wdata, ModuleIfIfLargeRspT action){
    tbl_module_if_if_large[wdata] = action;
}
typedef uint64_t ModuleIfIfSmallReqT;
typedef uint64_t ModuleIfIfSmallRspT;
std::unordered_map<ModuleIfIfSmallReqT, ModuleIfIfSmallRspT> tbl_module_if_if_small;
extern "C" ModuleIfIfSmallReqT matchtable_read_module_if_if_small(ModuleIfIfSmallReqT rdata) {
    auto it = tbl_module_if_if_small.find(rdata);
    if (it != tbl_module_if_if_small.end()) {
        return tbl_module_if_if_small[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_module_if_if_small(ModuleIfIfSmallReqT wdata, ModuleIfIfSmallRspT action){
    tbl_module_if_if_small[wdata] = action;
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
