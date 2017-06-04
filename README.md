# clickp4_fpga

## current state:

example|pass or not
-------|----
00-blank | N
01-start | N
02-rewind| Y
l2_switch| Y
l3_switch| Y

## about debugging:

file|changings
-|-
ControlGenerated.bsv|1. add table declarations in <case,endcase> <br> 2.change if() at every beginning of tables by changing the struct to data.meta.meta.XXX <br> 3.change unbound _reps_off by changing it to exit_reps_off <br> 4. delete the unrecognizable paras in if clause <br> 5. delete the unrecognizable mkConnection 
UnionGenerated.bsv|add action paras referring to clickp4.json
Connectaltypes.bsv|add action paras referring to clickp4.json
deparsergenerated.bsv|delete blank case clause delete ','
