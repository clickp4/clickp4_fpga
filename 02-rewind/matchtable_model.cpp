#include <iostream>
#include <unordered_map>
#ifdef __cplusplus
extern "C" {
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
typedef uint64_t PipelineRewindRewindTableReqT;
typedef uint64_t PipelineRewindRewindTableRspT;
std::unordered_map<PipelineRewindRewindTableReqT, PipelineRewindRewindTableRspT> tbl_pipeline_rewind_rewind_table;
extern "C" PipelineRewindRewindTableReqT matchtable_read_pipeline_rewind_rewind_table(PipelineRewindRewindTableReqT rdata) {
    auto it = tbl_pipeline_rewind_rewind_table.find(rdata);
    if (it != tbl_pipeline_rewind_rewind_table.end()) {
        return tbl_pipeline_rewind_rewind_table[rdata];
    } else {
        return 0;
    }
}
extern "C" void matchtable_write_pipeline_rewind_rewind_table(PipelineRewindRewindTableReqT wdata, PipelineRewindRewindTableRspT action){
    tbl_pipeline_rewind_rewind_table[wdata] = action;
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
