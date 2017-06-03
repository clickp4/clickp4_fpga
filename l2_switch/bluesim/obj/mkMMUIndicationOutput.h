/*
 * Generated by Bluespec Compiler, version 2014.07.A (build 34078, 2014-07-30)
 * 
 * On Sun Jun  4 00:06:35 CST 2017
 * 
 */

/* Generation options: */
#ifndef __mkMMUIndicationOutput_h__
#define __mkMMUIndicationOutput_h__

#include "bluesim_types.h"
#include "bs_module.h"
#include "bluesim_primitives.h"
#include "bs_vcd.h"
#include "mkMMUIndicationOutputPipes.h"


/* Class declaration for the mkMMUIndicationOutput module */
class MOD_mkMMUIndicationOutput : public Module {
 
 /* Clock handles */
 private:
  tClock __clk_handle_0;
 
 /* Clock gate handles */
 public:
  tUInt8 *clk_gate[0];
 
 /* Instantiation parameters */
 public:
 
 /* Module state */
 public:
  MOD_mkMMUIndicationOutputPipes INST_indicationPipes;
 
 /* Constructor */
 public:
  MOD_mkMMUIndicationOutput(tSimStateHdl simHdl, char const *name, Module *parent);
 
 /* Symbol init methods */
 private:
  void init_symbols_0();
 
 /* Reset signal definitions */
 private:
  tUInt8 PORT_RST_N;
 
 /* Port definitions */
 public:
 
 /* Publicly accessible definitions */
 public:
 
 /* Local definitions */
 private:
  tUWide DEF_ifc_error_code_CONCAT_ifc_error_sglId_CONCAT_i_ETC___d2;
  tUWide DEF_ifc_error_offset_CONCAT_ifc_error_extra___d1;
 
 /* Rules */
 public:
 
 /* Methods */
 public:
  tUInt32 METH_portalIfc_messageSize_size(tUInt32 ARG_portalIfc_messageSize_size_methodNumber);
  tUInt8 METH_RDY_portalIfc_messageSize_size();
  tUInt32 METH_portalIfc_indications_0_first();
  tUInt8 METH_RDY_portalIfc_indications_0_first();
  void METH_portalIfc_indications_0_deq();
  tUInt8 METH_RDY_portalIfc_indications_0_deq();
  tUInt8 METH_portalIfc_indications_0_notEmpty();
  tUInt8 METH_RDY_portalIfc_indications_0_notEmpty();
  tUInt32 METH_portalIfc_indications_1_first();
  tUInt8 METH_RDY_portalIfc_indications_1_first();
  void METH_portalIfc_indications_1_deq();
  tUInt8 METH_RDY_portalIfc_indications_1_deq();
  tUInt8 METH_portalIfc_indications_1_notEmpty();
  tUInt8 METH_RDY_portalIfc_indications_1_notEmpty();
  tUInt32 METH_portalIfc_indications_2_first();
  tUInt8 METH_RDY_portalIfc_indications_2_first();
  void METH_portalIfc_indications_2_deq();
  tUInt8 METH_RDY_portalIfc_indications_2_deq();
  tUInt8 METH_portalIfc_indications_2_notEmpty();
  tUInt8 METH_RDY_portalIfc_indications_2_notEmpty();
  tUInt8 METH_portalIfc_intr_status();
  tUInt8 METH_RDY_portalIfc_intr_status();
  tUInt32 METH_portalIfc_intr_channel();
  tUInt8 METH_RDY_portalIfc_intr_channel();
  void METH_ifc_idResponse(tUInt32 ARG_ifc_idResponse_sglId);
  tUInt8 METH_RDY_ifc_idResponse();
  void METH_ifc_configResp(tUInt32 ARG_ifc_configResp_sglId);
  tUInt8 METH_RDY_ifc_configResp();
  void METH_ifc_error(tUInt32 ARG_ifc_error_code,
		      tUInt32 ARG_ifc_error_sglId,
		      tUInt64 ARG_ifc_error_offset,
		      tUInt64 ARG_ifc_error_extra);
  tUInt8 METH_RDY_ifc_error();
 
 /* Reset routines */
 public:
  void reset_RST_N(tUInt8 ARG_rst_in);
 
 /* Static handles to reset routines */
 public:
 
 /* Pointers to reset fns in parent module for asserting output resets */
 private:
 
 /* Functions for the parent module to register its reset fns */
 public:
 
 /* Functions to set the elaborated clock id */
 public:
  void set_clk_0(char const *s);
 
 /* State dumping routine */
 public:
  void dump_state(unsigned int indent);
 
 /* VCD dumping routines */
 public:
  unsigned int dump_VCD_defs(unsigned int levels);
  void dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkMMUIndicationOutput &backing);
  void vcd_defs(tVCDDumpType dt, MOD_mkMMUIndicationOutput &backing);
  void vcd_submodules(tVCDDumpType dt, unsigned int levels, MOD_mkMMUIndicationOutput &backing);
};

#endif /* ifndef __mkMMUIndicationOutput_h__ */