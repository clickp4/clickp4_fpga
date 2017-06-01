#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
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
