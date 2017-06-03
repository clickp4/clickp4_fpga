# BSV dependences
OBJMAKEFILE_DEP = $(wildcard /home/yhs/p4fpga/bsv/infra/*.bsv) $(wildcard /home/yhs/connectal/bsv/*.bsv) $(wildcard /home/yhs/clickp4_fpga/02-rewind/generatedbsv/*.bsv) $(wildcard /home/yhs/sonic-lite/hw/bsv/*.bsv) $(wildcard /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/*.bsv) $(wildcard /home/yhs/clickp4_fpga/02-rewind/*.bsv) $(wildcard /home/yhs/p4fpga/bsv/datapath/*.bsv) $(wildcard /home/yhs/p4fpga/bsv/generated/*.bsv) $(wildcard /home/yhs/p4fpga/bsv/library/*.bsv) $(wildcard /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/*.bsv) $(wildcard /home/yhs/p4fpga/bsv/library/Bcam/*.bsv) $(wildcard /home/yhs/p4fpga/bsv/library/DMHC/*.bsv) $(wildcard /home/yhs/p4fpga/bsv/*.bsv) $(wildcard /home/yhs/connectal/lib/bsv/*.bsv) $(wildcard /home/yhs/connectal/generated/xilinx/*.bsv) $(wildcard /home/yhs/connectal/generated/altera/*.bsv)


RuntimeMemory_BO  = obj/RuntimeMemory.bo
RuntimeMemory_DEP = obj/Library.bo obj/RxChannel.bo obj/HostChannel.bo obj/TxChannel.bo obj/StreamChannel.bo obj/SharedBuff.bo obj/PacketBuffer.bo obj/MemTypes.bo
RuntimeMemory_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/library/TieOff.defines
RuntimeMemory_BSV = /home/yhs/p4fpga/bsv/infra/RuntimeMemory.bsv

$(eval $(call BSV_BO_RULE, $(RuntimeMemory_BO), $(RuntimeMemory_BSV), $(RuntimeMemory_DEP), $(RuntimeMemory_INC)))

MainAPI_BO  = obj/MainAPI.bo
MainAPI_DEP = obj/Channel.bo obj/ConnectalTypes.bo obj/Control.bo obj/DbgDefs.bo obj/Ethernet.bo obj/HostChannel.bo obj/MetaGenChannel.bo obj/PacketBuffer.bo obj/Pipe.bo obj/PktCapChannel.bo obj/PktGenChannel.bo obj/Program.bo obj/Runtime.bo obj/Stream.bo obj/StreamChannel.bo obj/StructDefines.bo obj/TxChannel.bo
MainAPI_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/APIDefGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/APIDeclGenerated.bsv
MainAPI_BSV = /home/yhs/p4fpga/bsv/infra/MainAPI.bsv

$(eval $(call BSV_BO_RULE, $(MainAPI_BO), $(MainAPI_BSV), $(MainAPI_DEP), $(MainAPI_INC)))

RuntimeStream_BO  = obj/RuntimeStream.bo
RuntimeStream_DEP = obj/Library.bo obj/RxChannel.bo obj/TxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/Channel.bo obj/SharedBuff.bo obj/PacketBuffer.bo obj/Stream.bo obj/StreamGearbox.bo obj/XBar.bo obj/SynthBuilder.bo
RuntimeStream_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/TieOff.defines /home/yhs/p4fpga/bsv/library/SynthBuilder.defines
RuntimeStream_BSV = /home/yhs/p4fpga/bsv/infra/RuntimeStream.bsv

$(eval $(call BSV_BO_RULE, $(RuntimeStream_BO), $(RuntimeStream_BSV), $(RuntimeStream_DEP), $(RuntimeStream_INC)))

Main_BO  = obj/Main.bo
Main_DEP = obj/HostInterface.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Pipe.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/NfsumePins.bo
Main_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/library/TieOff.defines
Main_BSV = /home/yhs/p4fpga/bsv/infra/Main.bsv

$(eval $(call BSV_BO_RULE, $(Main_BO), $(Main_BSV), $(Main_DEP), $(Main_INC)))

Board_BO  = obj/Board.bo
Board_DEP = obj/HostInterface.bo obj/Sims.bo obj/EthMac.bo obj/Stream.bo obj/NfsumePins.bo
Board_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Board_BSV = /home/yhs/p4fpga/bsv/infra/Board.bsv

$(eval $(call BSV_BO_RULE, $(Board_BO), $(Board_BSV), $(Board_DEP), $(Board_INC)))

Board_MOD = mkBoardSynth
Board_V   = verilog/mkBoardSynth.v
Board_BO  = obj/Board.bo
Board_BSV = /home/yhs/p4fpga/bsv/infra/Board.bsv
Board_DEP = obj/HostInterface.bo obj/Sims.bo obj/EthMac.bo obj/Stream.bo obj/NfsumePins.bo
Board_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(Board_MOD), $(Board_V), $(Board_BSV), $(Board_DEP), $(Board_INC)))

Runtime_BO  = obj/Runtime.bo
Runtime_DEP = obj/Library.bo obj/RxChannel.bo obj/TxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/Channel.bo obj/SharedBuff.bo obj/PacketBuffer.bo obj/Stream.bo obj/StreamGearbox.bo obj/XBar.bo obj/SynthBuilder.bo
Runtime_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/infra/RuntimeMemory.bsv /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/library/TieOff.defines /home/yhs/p4fpga/bsv/infra/RuntimeStream.bsv /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/TieOff.defines /home/yhs/p4fpga/bsv/library/SynthBuilder.defines
Runtime_BSV = /home/yhs/p4fpga/bsv/infra/Runtime.bsv

$(eval $(call BSV_BO_RULE, $(Runtime_BO), $(Runtime_BSV), $(Runtime_DEP), $(Runtime_INC)))

ConnectalAlteraCells_BO  = obj/ConnectalAlteraCells.bo
ConnectalAlteraCells_DEP = obj/ConnectalClocks.bo
ConnectalAlteraCells_INC = 
ConnectalAlteraCells_BSV = /home/yhs/connectal/bsv/ConnectalAlteraCells.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalAlteraCells_BO), $(ConnectalAlteraCells_BSV), $(ConnectalAlteraCells_DEP), $(ConnectalAlteraCells_INC)))

MemToPcie_BO  = obj/MemToPcie.bo
MemToPcie_DEP = obj/ConnectalMimo.bo obj/MIFO.bo obj/MemTypes.bo obj/ConfigCounter.bo obj/ConnectalConfig.bo
MemToPcie_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemToPcie_BSV = /home/yhs/connectal/bsv/MemToPcie.bsv

$(eval $(call BSV_BO_RULE, $(MemToPcie_BO), $(MemToPcie_BSV), $(MemToPcie_DEP), $(MemToPcie_INC)))

AxiStream_BO  = obj/AxiStream.bo
AxiStream_DEP = obj/GetPutM.bo
AxiStream_INC = 
AxiStream_BSV = /home/yhs/connectal/bsv/AxiStream.bsv

$(eval $(call BSV_BO_RULE, $(AxiStream_BO), $(AxiStream_BSV), $(AxiStream_DEP), $(AxiStream_INC)))

AvalonGather_BO  = obj/AvalonGather.bo
AvalonGather_DEP = obj/AvalonBits.bo obj/AvalonMasterSlave.bo
AvalonGather_INC = 
AvalonGather_BSV = /home/yhs/connectal/bsv/AvalonGather.bsv

$(eval $(call BSV_BO_RULE, $(AvalonGather_BO), $(AvalonGather_BSV), $(AvalonGather_DEP), $(AvalonGather_INC)))

AxiBits_BO  = obj/AxiBits.bo
AxiBits_DEP = obj/CFFIFO.bo obj/MemTypes.bo obj/EHRM.bo obj/Axi4MasterSlave.bo obj/ConnectalBramFifo.bo
AxiBits_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AxiBits_BSV = /home/yhs/connectal/bsv/AxiBits.bsv

$(eval $(call BSV_BO_RULE, $(AxiBits_BO), $(AxiBits_BSV), $(AxiBits_DEP), $(AxiBits_INC)))

Pipe_BO  = obj/Pipe.bo
Pipe_DEP = obj/AxiStream.bo
Pipe_INC = 
Pipe_BSV = /home/yhs/connectal/bsv/Pipe.bsv

$(eval $(call BSV_BO_RULE, $(Pipe_BO), $(Pipe_BSV), $(Pipe_DEP), $(Pipe_INC)))

AxiDma_BO  = obj/AxiDma.bo
AxiDma_DEP = obj/ConnectalConfig.bo obj/AxiMasterSlave.bo obj/Axi4MasterSlave.bo obj/MemTypes.bo obj/ConnectalMemory.bo
AxiDma_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AxiDma_BSV = /home/yhs/connectal/bsv/AxiDma.bsv

$(eval $(call BSV_BO_RULE, $(AxiDma_BO), $(AxiDma_BSV), $(AxiDma_DEP), $(AxiDma_INC)))

EHR_BO  = obj/EHR.bo
EHR_DEP = 
EHR_INC = 
EHR_BSV = /home/yhs/connectal/bsv/EHR.bsv

$(eval $(call BSV_BO_RULE, $(EHR_BO), $(EHR_BSV), $(EHR_DEP), $(EHR_INC)))

EHR_MOD = mkEHR2BSV
EHR_V   = verilog/mkEHR2BSV.v
EHR_BO  = obj/EHR.bo
EHR_BSV = /home/yhs/connectal/bsv/EHR.bsv
EHR_DEP = 
EHR_INC = 

$(eval $(call BSV_V_RULE, $(EHR_MOD), $(EHR_V), $(EHR_BSV), $(EHR_DEP), $(EHR_INC)))

GetPutM_BO  = obj/GetPutM.bo
GetPutM_DEP = 
GetPutM_INC = 
GetPutM_BSV = /home/yhs/connectal/bsv/GetPutM.bsv

$(eval $(call BSV_BO_RULE, $(GetPutM_BO), $(GetPutM_BSV), $(GetPutM_DEP), $(GetPutM_INC)))

PcieTop_BO  = obj/PcieTop.bo
PcieTop_DEP = obj/ConnectalConfig.bo obj/PcieSplitter.bo obj/Portal.bo obj/Top.bo obj/PcieCsr.bo obj/MemTypes.bo obj/Bscan.bo obj/ConnectalClocks.bo obj/GetPutWithClocks.bo obj/PcieHost.bo obj/HostInterface.bo obj/Platform.bo
PcieTop_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieTop_BSV = /home/yhs/connectal/bsv/PcieTop.bsv

$(eval $(call BSV_BO_RULE, $(PcieTop_BO), $(PcieTop_BSV), $(PcieTop_DEP), $(PcieTop_INC)))

CtrlMux_BO  = obj/CtrlMux.bo
CtrlMux_DEP = obj/ConnectalConfig.bo obj/HostInterface.bo obj/AddressGenerator.bo obj/Portal.bo obj/MemTypes.bo obj/Arith.bo obj/Pipe.bo
CtrlMux_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
CtrlMux_BSV = /home/yhs/connectal/bsv/CtrlMux.bsv

$(eval $(call BSV_BO_RULE, $(CtrlMux_BO), $(CtrlMux_BSV), $(CtrlMux_DEP), $(CtrlMux_INC)))

ConnectalConfig_BO  = obj/ConnectalConfig.bo
ConnectalConfig_DEP = 
ConnectalConfig_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ConnectalConfig_BSV = /home/yhs/connectal/bsv/ConnectalConfig.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalConfig_BO), $(ConnectalConfig_BSV), $(ConnectalConfig_DEP), $(ConnectalConfig_INC)))

PcieRootDevice_BO  = obj/PcieRootDevice.bo
PcieRootDevice_DEP = 
PcieRootDevice_INC = 
PcieRootDevice_BSV = /home/yhs/connectal/bsv/PcieRootDevice.bsv

$(eval $(call BSV_BO_RULE, $(PcieRootDevice_BO), $(PcieRootDevice_BSV), $(PcieRootDevice_DEP), $(PcieRootDevice_INC)))

GearboxGetPut_BO  = obj/GearboxGetPut.bo
GearboxGetPut_DEP = 
GearboxGetPut_INC = 
GearboxGetPut_BSV = /home/yhs/connectal/bsv/GearboxGetPut.bsv

$(eval $(call BSV_BO_RULE, $(GearboxGetPut_BO), $(GearboxGetPut_BSV), $(GearboxGetPut_DEP), $(GearboxGetPut_INC)))

MemPipe_BO  = obj/MemPipe.bo
MemPipe_DEP = obj/MemTypes.bo obj/Pipe.bo obj/ConfigCounter.bo
MemPipe_INC = 
MemPipe_BSV = /home/yhs/connectal/bsv/MemPipe.bsv

$(eval $(call BSV_BO_RULE, $(MemPipe_BO), $(MemPipe_BSV), $(MemPipe_DEP), $(MemPipe_INC)))

AvalonBits_BO  = obj/AvalonBits.bo
AvalonBits_DEP = 
AvalonBits_INC = 
AvalonBits_BSV = /home/yhs/connectal/bsv/AvalonBits.bsv

$(eval $(call BSV_BO_RULE, $(AvalonBits_BO), $(AvalonBits_BSV), $(AvalonBits_DEP), $(AvalonBits_INC)))

Adapter_BO  = obj/Adapter.bo
Adapter_DEP = obj/Pipe.bo
Adapter_INC = 
Adapter_BSV = /home/yhs/connectal/bsv/Adapter.bsv

$(eval $(call BSV_BO_RULE, $(Adapter_BO), $(Adapter_BSV), $(Adapter_DEP), $(Adapter_INC)))

PS4LIB_BO  = obj/PS4LIB.bo
PS4LIB_DEP = obj/ConnectalAlteraCells.bo obj/ConnectalClocks.bo obj/ALTERA_PCIE_SIV_WRAPPER.bo
PS4LIB_INC = 
PS4LIB_BSV = /home/yhs/connectal/bsv/PS4LIB.bsv

$(eval $(call BSV_BO_RULE, $(PS4LIB_BO), $(PS4LIB_BSV), $(PS4LIB_DEP), $(PS4LIB_INC)))

Pcie3EndpointX7_BO  = obj/Pcie3EndpointX7.bo
Pcie3EndpointX7_DEP = obj/CFFIFO.bo obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER3.bo obj/Bufgctrl.bo obj/PcieGearbox.bo obj/Pipe.bo
Pcie3EndpointX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Pcie3EndpointX7_BSV = /home/yhs/connectal/bsv/Pcie3EndpointX7.bsv

$(eval $(call BSV_BO_RULE, $(Pcie3EndpointX7_BO), $(Pcie3EndpointX7_BSV), $(Pcie3EndpointX7_DEP), $(Pcie3EndpointX7_INC)))

Pcie3EndpointX7_MOD = mkPcieEndpointX7
Pcie3EndpointX7_V   = verilog/mkPcieEndpointX7.v
Pcie3EndpointX7_BO  = obj/Pcie3EndpointX7.bo
Pcie3EndpointX7_BSV = /home/yhs/connectal/bsv/Pcie3EndpointX7.bsv
Pcie3EndpointX7_DEP = obj/CFFIFO.bo obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER3.bo obj/Bufgctrl.bo obj/PcieGearbox.bo obj/Pipe.bo
Pcie3EndpointX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(Pcie3EndpointX7_MOD), $(Pcie3EndpointX7_V), $(Pcie3EndpointX7_BSV), $(Pcie3EndpointX7_DEP), $(Pcie3EndpointX7_INC)))

PhysMemSlaveFromBram_BO  = obj/PhysMemSlaveFromBram.bo
PhysMemSlaveFromBram_DEP = obj/MemTypes.bo obj/AddressGenerator.bo
PhysMemSlaveFromBram_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PhysMemSlaveFromBram_BSV = /home/yhs/connectal/bsv/PhysMemSlaveFromBram.bsv

$(eval $(call BSV_BO_RULE, $(PhysMemSlaveFromBram_BO), $(PhysMemSlaveFromBram_BSV), $(PhysMemSlaveFromBram_DEP), $(PhysMemSlaveFromBram_INC)))

AsicTop_BO  = obj/AsicTop.bo
AsicTop_DEP = obj/ConnectalConfig.bo obj/Portal.bo obj/Top.bo obj/HostInterface.bo obj/Pipe.bo obj/CnocPortal.bo obj/MemTypes.bo obj/MMU.bo obj/MemServer.bo obj/MMURequest.bo obj/MMUIndication.bo obj/MemServerIndication.bo obj/MemServerRequest.bo obj/SimDma.bo obj/IfcNames.bo
AsicTop_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AsicTop_BSV = /home/yhs/connectal/bsv/AsicTop.bsv

$(eval $(call BSV_BO_RULE, $(AsicTop_BO), $(AsicTop_BSV), $(AsicTop_DEP), $(AsicTop_INC)))

MemServer_BO  = obj/MemServer.bo
MemServer_DEP = obj/HostInterface.bo obj/MemTypes.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/MMU.bo obj/MemServerInternal.bo
MemServer_INC = 
MemServer_BSV = /home/yhs/connectal/bsv/MemServer.bsv

$(eval $(call BSV_BO_RULE, $(MemServer_BO), $(MemServer_BSV), $(MemServer_DEP), $(MemServer_INC)))

MemUtils_BO  = obj/MemUtils.bo
MemUtils_DEP = obj/ConnectalConfig.bo obj/MemTypes.bo obj/ConfigCounter.bo obj/BRAMFIFOFLevel.bo
MemUtils_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemUtils_BSV = /home/yhs/connectal/bsv/MemUtils.bsv

$(eval $(call BSV_BO_RULE, $(MemUtils_BO), $(MemUtils_BSV), $(MemUtils_DEP), $(MemUtils_INC)))

Platform_BO  = obj/Platform.bo
Platform_DEP = obj/ConnectalConfig.bo obj/Portal.bo obj/HostInterface.bo obj/MMU.bo obj/MemServer.bo obj/MemTypes.bo obj/CtrlMux.bo obj/Pipe.bo obj/ConnectalMemory.bo obj/MMURequest.bo obj/MMUIndication.bo obj/MemServerIndication.bo obj/MemServerRequest.bo obj/IfcNames.bo
Platform_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Platform_BSV = /home/yhs/connectal/bsv/Platform.bsv

$(eval $(call BSV_BO_RULE, $(Platform_BO), $(Platform_BSV), $(Platform_DEP), $(Platform_INC)))

PcieRootPortX7_BO  = obj/PcieRootPortX7.bo
PcieRootPortX7_DEP = obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER.bo obj/Bufgctrl.bo
PcieRootPortX7_INC = 
PcieRootPortX7_BSV = /home/yhs/connectal/bsv/PcieRootPortX7.bsv

$(eval $(call BSV_BO_RULE, $(PcieRootPortX7_BO), $(PcieRootPortX7_BSV), $(PcieRootPortX7_DEP), $(PcieRootPortX7_INC)))

PcieRootPortX7_MOD = mkPcieRootPortX7
PcieRootPortX7_V   = verilog/mkPcieRootPortX7.v
PcieRootPortX7_BO  = obj/PcieRootPortX7.bo
PcieRootPortX7_BSV = /home/yhs/connectal/bsv/PcieRootPortX7.bsv
PcieRootPortX7_DEP = obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER.bo obj/Bufgctrl.bo
PcieRootPortX7_INC = 

$(eval $(call BSV_V_RULE, $(PcieRootPortX7_MOD), $(PcieRootPortX7_V), $(PcieRootPortX7_BSV), $(PcieRootPortX7_DEP), $(PcieRootPortX7_INC)))

PcieEndpointS5Test_BO  = obj/PcieEndpointS5Test.bo
PcieEndpointS5Test_DEP = obj/ConnectalAlteraCells.bo obj/ALTERA_PCIE_ED_WRAPPER.bo obj/PS5LIB.bo
PcieEndpointS5Test_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieEndpointS5Test_BSV = /home/yhs/connectal/bsv/PcieEndpointS5Test.bsv

$(eval $(call BSV_BO_RULE, $(PcieEndpointS5Test_BO), $(PcieEndpointS5Test_BSV), $(PcieEndpointS5Test_DEP), $(PcieEndpointS5Test_INC)))

BramMux_BO  = obj/BramMux.bo
BramMux_DEP = 
BramMux_INC = 
BramMux_BSV = /home/yhs/connectal/bsv/BramMux.bsv

$(eval $(call BSV_BO_RULE, $(BramMux_BO), $(BramMux_BSV), $(BramMux_DEP), $(BramMux_INC)))

CnocPortal_BO  = obj/CnocPortal.bo
CnocPortal_DEP = obj/ConnectalConfig.bo obj/MemTypes.bo obj/Pipe.bo obj/Portal.bo obj/HostInterface.bo
CnocPortal_INC = 
CnocPortal_BSV = /home/yhs/connectal/bsv/CnocPortal.bsv

$(eval $(call BSV_BO_RULE, $(CnocPortal_BO), $(CnocPortal_BSV), $(CnocPortal_DEP), $(CnocPortal_INC)))

PcieEndpointS5_BO  = obj/PcieEndpointS5.bo
PcieEndpointS5_DEP = obj/ConnectalConfig.bo
PcieEndpointS5_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieEndpointS5_BSV = /home/yhs/connectal/bsv/PcieEndpointS5.bsv

$(eval $(call BSV_BO_RULE, $(PcieEndpointS5_BO), $(PcieEndpointS5_BSV), $(PcieEndpointS5_DEP), $(PcieEndpointS5_INC)))

PcieEndpointS5_MOD = mkPcieEndpointS5
PcieEndpointS5_V   = verilog/mkPcieEndpointS5.v
PcieEndpointS5_BO  = obj/PcieEndpointS5.bo
PcieEndpointS5_BSV = /home/yhs/connectal/bsv/PcieEndpointS5.bsv
PcieEndpointS5_DEP = obj/ConnectalConfig.bo
PcieEndpointS5_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(PcieEndpointS5_MOD), $(PcieEndpointS5_V), $(PcieEndpointS5_BSV), $(PcieEndpointS5_DEP), $(PcieEndpointS5_INC)))

BpiFlash_BO  = obj/BpiFlash.bo
BpiFlash_DEP = obj/ConnectalXilinxCells.bo obj/I28F512P33.bo
BpiFlash_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
BpiFlash_BSV = /home/yhs/connectal/bsv/BpiFlash.bsv

$(eval $(call BSV_BO_RULE, $(BpiFlash_BO), $(BpiFlash_BSV), $(BpiFlash_DEP), $(BpiFlash_INC)))

PcieSplitter_BO  = obj/PcieSplitter.bo
PcieSplitter_DEP = 
PcieSplitter_INC = 
PcieSplitter_BSV = /home/yhs/connectal/bsv/PcieSplitter.bsv

$(eval $(call BSV_BO_RULE, $(PcieSplitter_BO), $(PcieSplitter_BSV), $(PcieSplitter_DEP), $(PcieSplitter_INC)))

PcieSplitter_MOD = mkTLPDispatcher
PcieSplitter_V   = verilog/mkTLPDispatcher.v
PcieSplitter_BO  = obj/PcieSplitter.bo
PcieSplitter_BSV = /home/yhs/connectal/bsv/PcieSplitter.bsv
PcieSplitter_DEP = 
PcieSplitter_INC = 

$(eval $(call BSV_V_RULE, $(PcieSplitter_MOD), $(PcieSplitter_V), $(PcieSplitter_BSV), $(PcieSplitter_DEP), $(PcieSplitter_INC)))

PcieSplitter_MOD = mkTLPArbiter
PcieSplitter_V   = verilog/mkTLPArbiter.v
PcieSplitter_BO  = obj/PcieSplitter.bo
PcieSplitter_BSV = /home/yhs/connectal/bsv/PcieSplitter.bsv
PcieSplitter_DEP = 
PcieSplitter_INC = 

$(eval $(call BSV_V_RULE, $(PcieSplitter_MOD), $(PcieSplitter_V), $(PcieSplitter_BSV), $(PcieSplitter_DEP), $(PcieSplitter_INC)))

CFFIFO_BO  = obj/CFFIFO.bo
CFFIFO_DEP = obj/EHRM.bo
CFFIFO_INC = 
CFFIFO_BSV = /home/yhs/connectal/bsv/CFFIFO.bsv

$(eval $(call BSV_BO_RULE, $(CFFIFO_BO), $(CFFIFO_BSV), $(CFFIFO_DEP), $(CFFIFO_INC)))

Axi4MasterSlave_BO  = obj/Axi4MasterSlave.bo
Axi4MasterSlave_DEP = obj/MemTypes.bo
Axi4MasterSlave_INC = 
Axi4MasterSlave_BSV = /home/yhs/connectal/bsv/Axi4MasterSlave.bsv

$(eval $(call BSV_BO_RULE, $(Axi4MasterSlave_BO), $(Axi4MasterSlave_BSV), $(Axi4MasterSlave_DEP), $(Axi4MasterSlave_INC)))

PcieToMem_BO  = obj/PcieToMem.bo
PcieToMem_DEP = obj/MemTypes.bo obj/ConnectalConfig.bo
PcieToMem_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieToMem_BSV = /home/yhs/connectal/bsv/PcieToMem.bsv

$(eval $(call BSV_BO_RULE, $(PcieToMem_BO), $(PcieToMem_BSV), $(PcieToMem_DEP), $(PcieToMem_INC)))

PcieToMem_MOD = mkPcieToMem
PcieToMem_V   = verilog/mkPcieToMem.v
PcieToMem_BO  = obj/PcieToMem.bo
PcieToMem_BSV = /home/yhs/connectal/bsv/PcieToMem.bsv
PcieToMem_DEP = obj/MemTypes.bo obj/ConnectalConfig.bo
PcieToMem_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(PcieToMem_MOD), $(PcieToMem_V), $(PcieToMem_BSV), $(PcieToMem_DEP), $(PcieToMem_INC)))

PcieToMem_MOD = mkMemInterrupt
PcieToMem_V   = verilog/mkMemInterrupt.v
PcieToMem_BO  = obj/PcieToMem.bo
PcieToMem_BSV = /home/yhs/connectal/bsv/PcieToMem.bsv
PcieToMem_DEP = obj/MemTypes.bo obj/ConnectalConfig.bo
PcieToMem_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(PcieToMem_MOD), $(PcieToMem_V), $(PcieToMem_BSV), $(PcieToMem_DEP), $(PcieToMem_INC)))

MemReadEngine_BO  = obj/MemReadEngine.bo
MemReadEngine_DEP = obj/ConfigCounter.bo obj/ConnectalMemory.bo obj/ConnectalBramFifo.bo obj/MemTypes.bo obj/Pipe.bo obj/MemUtils.bo obj/ConnectalConfig.bo
MemReadEngine_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemReadEngine_BSV = /home/yhs/connectal/bsv/MemReadEngine.bsv

$(eval $(call BSV_BO_RULE, $(MemReadEngine_BO), $(MemReadEngine_BSV), $(MemReadEngine_DEP), $(MemReadEngine_INC)))

ConnectalBram_BO  = obj/ConnectalBram.bo
ConnectalBram_DEP = obj/EHR.bo obj/ConfigCounter.bo
ConnectalBram_INC = 
ConnectalBram_BSV = /home/yhs/connectal/bsv/ConnectalBram.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalBram_BO), $(ConnectalBram_BSV), $(ConnectalBram_DEP), $(ConnectalBram_INC)))

ConnectalClocks_BO  = obj/ConnectalClocks.bo
ConnectalClocks_DEP = 
ConnectalClocks_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ConnectalClocks_BSV = /home/yhs/connectal/bsv/ConnectalClocks.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalClocks_BO), $(ConnectalClocks_BSV), $(ConnectalClocks_DEP), $(ConnectalClocks_INC)))

PS7LIB_BO  = obj/PS7LIB.bo
PS7LIB_DEP = obj/ConnectableWithTrace.bo obj/Bscan.bo obj/PPS7LIB.bo obj/AxiMasterSlave.bo obj/AxiDma.bo obj/ConnectalXilinxCells.bo obj/ConnectalClocks.bo obj/AxiBits.bo obj/AxiGather.bo
PS7LIB_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PS7LIB_BSV = /home/yhs/connectal/bsv/PS7LIB.bsv

$(eval $(call BSV_BO_RULE, $(PS7LIB_BO), $(PS7LIB_BSV), $(PS7LIB_DEP), $(PS7LIB_INC)))

AvalonMasterSlave_BO  = obj/AvalonMasterSlave.bo
AvalonMasterSlave_DEP = 
AvalonMasterSlave_INC = 
AvalonMasterSlave_BSV = /home/yhs/connectal/bsv/AvalonMasterSlave.bsv

$(eval $(call BSV_BO_RULE, $(AvalonMasterSlave_BO), $(AvalonMasterSlave_BSV), $(AvalonMasterSlave_DEP), $(AvalonMasterSlave_INC)))

EHRM_BO  = obj/EHRM.bo
EHRM_DEP = 
EHRM_INC = 
EHRM_BSV = /home/yhs/connectal/bsv/EHRM.bsv

$(eval $(call BSV_BO_RULE, $(EHRM_BO), $(EHRM_BSV), $(EHRM_DEP), $(EHRM_INC)))

ZynqTop_BO  = obj/ZynqTop.bo
ZynqTop_DEP = obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectableWithTrace.bo obj/Portal.bo obj/MemTypes.bo obj/AxiMasterSlave.bo obj/ConnectalXilinxCells.bo obj/PS7LIB.bo obj/PS7Trace.bo obj/PPS7LIB.bo obj/CtrlMux.bo obj/AxiDma.bo obj/Top.bo obj/Bscan.bo obj/HostInterface.bo obj/Platform.bo
ZynqTop_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ZynqTop_BSV = /home/yhs/connectal/bsv/ZynqTop.bsv

$(eval $(call BSV_BO_RULE, $(ZynqTop_BO), $(ZynqTop_BSV), $(ZynqTop_DEP), $(ZynqTop_INC)))

ConnectableWithTrace_BO  = obj/ConnectableWithTrace.bo
ConnectableWithTrace_DEP = obj/AxiMasterSlave.bo obj/Bscan.bo
ConnectableWithTrace_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ConnectableWithTrace_BSV = /home/yhs/connectal/bsv/ConnectableWithTrace.bsv

$(eval $(call BSV_BO_RULE, $(ConnectableWithTrace_BO), $(ConnectableWithTrace_BSV), $(ConnectableWithTrace_DEP), $(ConnectableWithTrace_INC)))

ConnectalXilinxCells_BO  = obj/ConnectalXilinxCells.bo
ConnectalXilinxCells_DEP = 
ConnectalXilinxCells_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ConnectalXilinxCells_BSV = /home/yhs/connectal/bsv/ConnectalXilinxCells.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalXilinxCells_BO), $(ConnectalXilinxCells_BSV), $(ConnectalXilinxCells_DEP), $(ConnectalXilinxCells_INC)))

MMU_BO  = obj/MMU.bo
MMU_DEP = obj/ConnectalBram.bo obj/MemTypes.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/ConnectalCompletionBuffer.bo obj/Pipe.bo obj/SimDma.bo
MMU_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MMU_BSV = /home/yhs/connectal/bsv/MMU.bsv

$(eval $(call BSV_BO_RULE, $(MMU_BO), $(MMU_BSV), $(MMU_DEP), $(MMU_INC)))

MMU_MOD = mkMMUSynth
MMU_V   = verilog/mkMMUSynth.v
MMU_BO  = obj/MMU.bo
MMU_BSV = /home/yhs/connectal/bsv/MMU.bsv
MMU_DEP = obj/ConnectalBram.bo obj/MemTypes.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/ConnectalCompletionBuffer.bo obj/Pipe.bo obj/SimDma.bo
MMU_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(MMU_MOD), $(MMU_V), $(MMU_BSV), $(MMU_DEP), $(MMU_INC)))

ConnectalMimo_BO  = obj/ConnectalMimo.bo
ConnectalMimo_DEP = obj/ConnectalBramFifo.bo
ConnectalMimo_INC = 
ConnectalMimo_BSV = /home/yhs/connectal/bsv/ConnectalMimo.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalMimo_BO), $(ConnectalMimo_BSV), $(ConnectalMimo_DEP), $(ConnectalMimo_INC)))

ConnectalCompletionBuffer_BO  = obj/ConnectalCompletionBuffer.bo
ConnectalCompletionBuffer_DEP = obj/MemTypes.bo obj/ConnectalMemory.bo obj/ConfigCounter.bo
ConnectalCompletionBuffer_INC = 
ConnectalCompletionBuffer_BSV = /home/yhs/connectal/bsv/ConnectalCompletionBuffer.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalCompletionBuffer_BO), $(ConnectalCompletionBuffer_BSV), $(ConnectalCompletionBuffer_DEP), $(ConnectalCompletionBuffer_INC)))

MemServerInternal_BO  = obj/MemServerInternal.bo
MemServerInternal_DEP = obj/MemTypes.bo obj/ConnectalMemory.bo obj/ConnectalClocks.bo obj/MMU.bo obj/ConnectalCompletionBuffer.bo obj/ConnectalConfig.bo
MemServerInternal_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemServerInternal_BSV = /home/yhs/connectal/bsv/MemServerInternal.bsv

$(eval $(call BSV_BO_RULE, $(MemServerInternal_BO), $(MemServerInternal_BSV), $(MemServerInternal_DEP), $(MemServerInternal_INC)))

TraceMemClient_BO  = obj/TraceMemClient.bo
TraceMemClient_DEP = obj/Pipe.bo obj/MemTypes.bo obj/ConnectalMemory.bo
TraceMemClient_INC = 
TraceMemClient_BSV = /home/yhs/connectal/bsv/TraceMemClient.bsv

$(eval $(call BSV_BO_RULE, $(TraceMemClient_BO), $(TraceMemClient_BSV), $(TraceMemClient_DEP), $(TraceMemClient_INC)))

Pcie1EndpointX7_BO  = obj/Pcie1EndpointX7.bo
Pcie1EndpointX7_DEP = obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER.bo obj/Bufgctrl.bo obj/PcieGearbox.bo obj/PcieStateChanges.bo obj/Pipe.bo
Pcie1EndpointX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Pcie1EndpointX7_BSV = /home/yhs/connectal/bsv/Pcie1EndpointX7.bsv

$(eval $(call BSV_BO_RULE, $(Pcie1EndpointX7_BO), $(Pcie1EndpointX7_BSV), $(Pcie1EndpointX7_DEP), $(Pcie1EndpointX7_INC)))

Pcie1EndpointX7_MOD = mkPcieEndpointX7
Pcie1EndpointX7_V   = verilog/mkPcieEndpointX7.v
Pcie1EndpointX7_BO  = obj/Pcie1EndpointX7.bo
Pcie1EndpointX7_BSV = /home/yhs/connectal/bsv/Pcie1EndpointX7.bsv
Pcie1EndpointX7_DEP = obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER.bo obj/Bufgctrl.bo obj/PcieGearbox.bo obj/PcieStateChanges.bo obj/Pipe.bo
Pcie1EndpointX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(Pcie1EndpointX7_MOD), $(Pcie1EndpointX7_V), $(Pcie1EndpointX7_BSV), $(Pcie1EndpointX7_DEP), $(Pcie1EndpointX7_INC)))

LinkerLib_BO  = obj/LinkerLib.bo
LinkerLib_DEP = 
LinkerLib_INC = 
LinkerLib_BSV = /home/yhs/connectal/bsv/LinkerLib.bsv

$(eval $(call BSV_BO_RULE, $(LinkerLib_BO), $(LinkerLib_BSV), $(LinkerLib_DEP), $(LinkerLib_INC)))

ConnectalBramFifo_BO  = obj/ConnectalBramFifo.bo
ConnectalBramFifo_DEP = obj/Arith.bo obj/ConnectalClocks.bo
ConnectalBramFifo_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ConnectalBramFifo_BSV = /home/yhs/connectal/bsv/ConnectalBramFifo.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalBramFifo_BO), $(ConnectalBramFifo_BSV), $(ConnectalBramFifo_DEP), $(ConnectalBramFifo_INC)))

AvalonSplitter_BO  = obj/AvalonSplitter.bo
AvalonSplitter_DEP = obj/AvalonMasterSlave.bo
AvalonSplitter_INC = 
AvalonSplitter_BSV = /home/yhs/connectal/bsv/AvalonSplitter.bsv

$(eval $(call BSV_BO_RULE, $(AvalonSplitter_BO), $(AvalonSplitter_BSV), $(AvalonSplitter_DEP), $(AvalonSplitter_INC)))

SimDma_BO  = obj/SimDma.bo
SimDma_DEP = obj/MemTypes.bo obj/ConnectalConfig.bo
SimDma_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SimDma_BSV = /home/yhs/connectal/bsv/SimDma.bsv

$(eval $(call BSV_BO_RULE, $(SimDma_BO), $(SimDma_BSV), $(SimDma_DEP), $(SimDma_INC)))

PS5LIB_BO  = obj/PS5LIB.bo
PS5LIB_DEP = obj/ConnectalAlteraCells.bo obj/ConnectalClocks.bo obj/ALTERA_XCVR_RECONFIG_WRAPPER.bo obj/ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER.bo obj/ALTERA_PCIE_SV_WRAPPER.bo
PS5LIB_INC = 
PS5LIB_BSV = /home/yhs/connectal/bsv/PS5LIB.bsv

$(eval $(call BSV_BO_RULE, $(PS5LIB_BO), $(PS5LIB_BSV), $(PS5LIB_DEP), $(PS5LIB_INC)))

PS5LIB_MOD = mkAlteraPcieHipRs
PS5LIB_V   = verilog/mkAlteraPcieHipRs.v
PS5LIB_BO  = obj/PS5LIB.bo
PS5LIB_BSV = /home/yhs/connectal/bsv/PS5LIB.bsv
PS5LIB_DEP = obj/ConnectalAlteraCells.bo obj/ConnectalClocks.bo obj/ALTERA_XCVR_RECONFIG_WRAPPER.bo obj/ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER.bo obj/ALTERA_PCIE_SV_WRAPPER.bo
PS5LIB_INC = 

$(eval $(call BSV_V_RULE, $(PS5LIB_MOD), $(PS5LIB_V), $(PS5LIB_BSV), $(PS5LIB_DEP), $(PS5LIB_INC)))

XsimTop_BO  = obj/XsimTop.bo
XsimTop_DEP = obj/ConnectalConfig.bo obj/Portal.bo obj/Top.bo obj/HostInterface.bo obj/Pipe.bo obj/CnocPortal.bo obj/MemTypes.bo obj/MMU.bo obj/MemServer.bo obj/MMURequest.bo obj/MMUIndication.bo obj/MemServerIndication.bo obj/MemServerRequest.bo obj/SimDma.bo obj/IfcNames.bo
XsimTop_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
XsimTop_BSV = /home/yhs/connectal/bsv/XsimTop.bsv

$(eval $(call BSV_BO_RULE, $(XsimTop_BO), $(XsimTop_BSV), $(XsimTop_DEP), $(XsimTop_INC)))

PcieTracer_BO  = obj/PcieTracer.bo
PcieTracer_DEP = obj/BramMux.bo obj/ConnectalBram.bo
PcieTracer_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieTracer_BSV = /home/yhs/connectal/bsv/PcieTracer.bsv

$(eval $(call BSV_BO_RULE, $(PcieTracer_BO), $(PcieTracer_BSV), $(PcieTracer_DEP), $(PcieTracer_INC)))

PcieTracer_MOD = mkPcieTracer
PcieTracer_V   = verilog/mkPcieTracer.v
PcieTracer_BO  = obj/PcieTracer.bo
PcieTracer_BSV = /home/yhs/connectal/bsv/PcieTracer.bsv
PcieTracer_DEP = obj/BramMux.bo obj/ConnectalBram.bo
PcieTracer_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(PcieTracer_MOD), $(PcieTracer_V), $(PcieTracer_BSV), $(PcieTracer_DEP), $(PcieTracer_INC)))

AddressGenerator_BO  = obj/AddressGenerator.bo
AddressGenerator_DEP = obj/MemTypes.bo obj/ConnectalConfig.bo
AddressGenerator_INC = 
AddressGenerator_BSV = /home/yhs/connectal/bsv/AddressGenerator.bsv

$(eval $(call BSV_BO_RULE, $(AddressGenerator_BO), $(AddressGenerator_BSV), $(AddressGenerator_DEP), $(AddressGenerator_INC)))

Pcie2EndpointX7_BO  = obj/Pcie2EndpointX7.bo
Pcie2EndpointX7_DEP = obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER2.bo obj/Pipe.bo obj/PcieStateChanges.bo obj/Bufgctrl.bo
Pcie2EndpointX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Pcie2EndpointX7_BSV = /home/yhs/connectal/bsv/Pcie2EndpointX7.bsv

$(eval $(call BSV_BO_RULE, $(Pcie2EndpointX7_BO), $(Pcie2EndpointX7_BSV), $(Pcie2EndpointX7_DEP), $(Pcie2EndpointX7_INC)))

Pcie2EndpointX7_MOD = mkPcieEndpointX7
Pcie2EndpointX7_V   = verilog/mkPcieEndpointX7.v
Pcie2EndpointX7_BO  = obj/Pcie2EndpointX7.bo
Pcie2EndpointX7_BSV = /home/yhs/connectal/bsv/Pcie2EndpointX7.bsv
Pcie2EndpointX7_DEP = obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/PCIEWRAPPER2.bo obj/Pipe.bo obj/PcieStateChanges.bo obj/Bufgctrl.bo
Pcie2EndpointX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(Pcie2EndpointX7_MOD), $(Pcie2EndpointX7_V), $(Pcie2EndpointX7_BSV), $(Pcie2EndpointX7_DEP), $(Pcie2EndpointX7_INC)))

DisplayInd_BO  = obj/DisplayInd.bo
DisplayInd_DEP = 
DisplayInd_INC = 
DisplayInd_BSV = /home/yhs/connectal/bsv/DisplayInd.bsv

$(eval $(call BSV_BO_RULE, $(DisplayInd_BO), $(DisplayInd_BSV), $(DisplayInd_DEP), $(DisplayInd_INC)))

Trace_BO  = obj/Trace.bo
Trace_DEP = obj/CFFIFO.bo obj/MemTypes.bo
Trace_INC = 
Trace_BSV = /home/yhs/connectal/bsv/Trace.bsv

$(eval $(call BSV_BO_RULE, $(Trace_BO), $(Trace_BSV), $(Trace_DEP), $(Trace_INC)))

AxiDdr3Controller_BO  = obj/AxiDdr3Controller.bo
AxiDdr3Controller_DEP = obj/AxiDdr3Wrapper.bo obj/AxiBits.bo obj/AxiGather.bo obj/Axi4MasterSlave.bo obj/ConnectalClocks.bo
AxiDdr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AxiDdr3Controller_BSV = /home/yhs/connectal/bsv/AxiDdr3Controller.bsv

$(eval $(call BSV_BO_RULE, $(AxiDdr3Controller_BO), $(AxiDdr3Controller_BSV), $(AxiDdr3Controller_DEP), $(AxiDdr3Controller_INC)))

AxiDdr3Controller_MOD = mkDdr3
AxiDdr3Controller_V   = verilog/mkDdr3.v
AxiDdr3Controller_BO  = obj/AxiDdr3Controller.bo
AxiDdr3Controller_BSV = /home/yhs/connectal/bsv/AxiDdr3Controller.bsv
AxiDdr3Controller_DEP = obj/AxiDdr3Wrapper.bo obj/AxiBits.bo obj/AxiGather.bo obj/Axi4MasterSlave.bo obj/ConnectalClocks.bo
AxiDdr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(AxiDdr3Controller_MOD), $(AxiDdr3Controller_V), $(AxiDdr3Controller_BSV), $(AxiDdr3Controller_DEP), $(AxiDdr3Controller_INC)))

ParallellaTop_BO  = obj/ParallellaTop.bo
ParallellaTop_DEP = obj/ConnectableWithTrace.bo obj/Portal.bo obj/MemTypes.bo obj/AxiMasterSlave.bo obj/ConnectalXilinxCells.bo obj/PS7LIB.bo obj/PS7Trace.bo obj/PPS7LIB.bo obj/CtrlMux.bo obj/AxiDma.bo obj/Top.bo obj/Bscan.bo obj/HostInterface.bo
ParallellaTop_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ParallellaTop_BSV = /home/yhs/connectal/bsv/ParallellaTop.bsv

$(eval $(call BSV_BO_RULE, $(ParallellaTop_BO), $(ParallellaTop_BSV), $(ParallellaTop_DEP), $(ParallellaTop_INC)))

SimLink_BO  = obj/SimLink.bo
SimLink_DEP = obj/Pipe.bo
SimLink_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SimLink_BSV = /home/yhs/connectal/bsv/SimLink.bsv

$(eval $(call BSV_BO_RULE, $(SimLink_BO), $(SimLink_BSV), $(SimLink_DEP), $(SimLink_INC)))

PcieStateChanges_BO  = obj/PcieStateChanges.bo
PcieStateChanges_DEP = obj/Pipe.bo
PcieStateChanges_INC = 
PcieStateChanges_BSV = /home/yhs/connectal/bsv/PcieStateChanges.bsv

$(eval $(call BSV_BO_RULE, $(PcieStateChanges_BO), $(PcieStateChanges_BSV), $(PcieStateChanges_DEP), $(PcieStateChanges_INC)))

PcieHost_BO  = obj/PcieHost.bo
PcieHost_DEP = obj/ConnectalConfig.bo obj/PcieSplitter.bo obj/PcieTracer.bo obj/Bscan.bo obj/Portal.bo obj/MemToPcie.bo obj/PcieToMem.bo obj/PcieCsr.bo obj/MemTypes.bo obj/HostInterface.bo
PcieHost_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieHost_BSV = /home/yhs/connectal/bsv/PcieHost.bsv

$(eval $(call BSV_BO_RULE, $(PcieHost_BO), $(PcieHost_BSV), $(PcieHost_DEP), $(PcieHost_INC)))

PcieHost_MOD = mkMemToPcieSynth
PcieHost_V   = verilog/mkMemToPcieSynth.v
PcieHost_BO  = obj/PcieHost.bo
PcieHost_BSV = /home/yhs/connectal/bsv/PcieHost.bsv
PcieHost_DEP = obj/ConnectalConfig.bo obj/PcieSplitter.bo obj/PcieTracer.bo obj/Bscan.bo obj/Portal.bo obj/MemToPcie.bo obj/PcieToMem.bo obj/PcieCsr.bo obj/MemTypes.bo obj/HostInterface.bo
PcieHost_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(PcieHost_MOD), $(PcieHost_V), $(PcieHost_BSV), $(PcieHost_DEP), $(PcieHost_INC)))

Portal_BO  = obj/Portal.bo
Portal_DEP = obj/ConnectalConfig.bo obj/MemTypes.bo obj/Pipe.bo obj/ConnectalMemory.bo obj/HostInterface.bo
Portal_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Portal_BSV = /home/yhs/connectal/bsv/Portal.bsv

$(eval $(call BSV_BO_RULE, $(Portal_BO), $(Portal_BSV), $(Portal_DEP), $(Portal_INC)))

ConnectalMemory_BO  = obj/ConnectalMemory.bo
ConnectalMemory_DEP = 
ConnectalMemory_INC = 
ConnectalMemory_BSV = /home/yhs/connectal/bsv/ConnectalMemory.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalMemory_BO), $(ConnectalMemory_BSV), $(ConnectalMemory_DEP), $(ConnectalMemory_INC)))

AvalonDma_BO  = obj/AvalonDma.bo
AvalonDma_DEP = obj/ConnectalConfig.bo obj/MemTypes.bo obj/ConnectalMemory.bo obj/AvalonMasterSlave.bo obj/AvalonBits.bo obj/AddressGenerator.bo obj/AvalonSplitter.bo
AvalonDma_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AvalonDma_BSV = /home/yhs/connectal/bsv/AvalonDma.bsv

$(eval $(call BSV_BO_RULE, $(AvalonDma_BO), $(AvalonDma_BSV), $(AvalonDma_DEP), $(AvalonDma_INC)))

AxiMasterSlave_BO  = obj/AxiMasterSlave.bo
AxiMasterSlave_DEP = 
AxiMasterSlave_INC = 
AxiMasterSlave_BSV = /home/yhs/connectal/bsv/AxiMasterSlave.bsv

$(eval $(call BSV_BO_RULE, $(AxiMasterSlave_BO), $(AxiMasterSlave_BSV), $(AxiMasterSlave_DEP), $(AxiMasterSlave_INC)))

PcieGearbox_BO  = obj/PcieGearbox.bo
PcieGearbox_DEP = 
PcieGearbox_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieGearbox_BSV = /home/yhs/connectal/bsv/PcieGearbox.bsv

$(eval $(call BSV_BO_RULE, $(PcieGearbox_BO), $(PcieGearbox_BSV), $(PcieGearbox_DEP), $(PcieGearbox_INC)))

MemServerPortal_BO  = obj/MemServerPortal.bo
MemServerPortal_DEP = obj/ConfigCounter.bo obj/CFFIFO.bo obj/ConnectalConfig.bo obj/MemTypes.bo
MemServerPortal_INC = 
MemServerPortal_BSV = /home/yhs/connectal/bsv/MemServerPortal.bsv

$(eval $(call BSV_BO_RULE, $(MemServerPortal_BO), $(MemServerPortal_BSV), $(MemServerPortal_DEP), $(MemServerPortal_INC)))

PS7Trace_BO  = obj/PS7Trace.bo
PS7Trace_DEP = obj/ConnectalConfig.bo obj/ConnectableWithTrace.bo obj/HostInterface.bo obj/PS7LIB.bo obj/Portal.bo obj/AxiMasterSlave.bo obj/AxiDma.bo obj/AxiBits.bo obj/AxiGather.bo obj/Platform.bo
PS7Trace_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PS7Trace_BSV = /home/yhs/connectal/bsv/PS7Trace.bsv

$(eval $(call BSV_BO_RULE, $(PS7Trace_BO), $(PS7Trace_BSV), $(PS7Trace_DEP), $(PS7Trace_INC)))

MemWriteEngine_BO  = obj/MemWriteEngine.bo
MemWriteEngine_DEP = obj/ConfigCounter.bo obj/MemTypes.bo obj/Pipe.bo obj/ConnectalConfig.bo
MemWriteEngine_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemWriteEngine_BSV = /home/yhs/connectal/bsv/MemWriteEngine.bsv

$(eval $(call BSV_BO_RULE, $(MemWriteEngine_BO), $(MemWriteEngine_BSV), $(MemWriteEngine_DEP), $(MemWriteEngine_INC)))

Pcie3RootPortX7_BO  = obj/Pcie3RootPortX7.bo
Pcie3RootPortX7_DEP = obj/CFFIFO.bo obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/ROOTPCIEWRAPPER3.bo obj/Bufgctrl.bo obj/PcieGearbox.bo obj/Pipe.bo
Pcie3RootPortX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Pcie3RootPortX7_BSV = /home/yhs/connectal/bsv/Pcie3RootPortX7.bsv

$(eval $(call BSV_BO_RULE, $(Pcie3RootPortX7_BO), $(Pcie3RootPortX7_BSV), $(Pcie3RootPortX7_DEP), $(Pcie3RootPortX7_INC)))

Pcie3RootPortX7_MOD = mkPcieRootPortX7
Pcie3RootPortX7_V   = verilog/mkPcieRootPortX7.v
Pcie3RootPortX7_BO  = obj/Pcie3RootPortX7.bo
Pcie3RootPortX7_BSV = /home/yhs/connectal/bsv/Pcie3RootPortX7.bsv
Pcie3RootPortX7_DEP = obj/CFFIFO.bo obj/ConnectalConfig.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/ROOTPCIEWRAPPER3.bo obj/Bufgctrl.bo obj/PcieGearbox.bo obj/Pipe.bo
Pcie3RootPortX7_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(Pcie3RootPortX7_MOD), $(Pcie3RootPortX7_V), $(Pcie3RootPortX7_BSV), $(Pcie3RootPortX7_DEP), $(Pcie3RootPortX7_INC)))

MemTypes_BO  = obj/MemTypes.bo
MemTypes_DEP = obj/Adapter.bo obj/ConnectalConfig.bo obj/Pipe.bo obj/ConnectalMemory.bo obj/AxiStream.bo
MemTypes_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemTypes_BSV = /home/yhs/connectal/bsv/MemTypes.bsv

$(eval $(call BSV_BO_RULE, $(MemTypes_BO), $(MemTypes_BSV), $(MemTypes_DEP), $(MemTypes_INC)))

PcieCsr_BO  = obj/PcieCsr.bo
PcieCsr_DEP = obj/PcieTracer.bo obj/MemTypes.bo obj/AddressGenerator.bo obj/Pipe.bo
PcieCsr_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PcieCsr_BSV = /home/yhs/connectal/bsv/PcieCsr.bsv

$(eval $(call BSV_BO_RULE, $(PcieCsr_BO), $(PcieCsr_BSV), $(PcieCsr_DEP), $(PcieCsr_INC)))

PcieCsr_MOD = mkPcieControlAndStatusRegs
PcieCsr_V   = verilog/mkPcieControlAndStatusRegs.v
PcieCsr_BO  = obj/PcieCsr.bo
PcieCsr_BSV = /home/yhs/connectal/bsv/PcieCsr.bsv
PcieCsr_DEP = obj/PcieTracer.bo obj/MemTypes.bo obj/AddressGenerator.bo obj/Pipe.bo
PcieCsr_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(PcieCsr_MOD), $(PcieCsr_V), $(PcieCsr_BSV), $(PcieCsr_DEP), $(PcieCsr_INC)))

AxiGather_BO  = obj/AxiGather.bo
AxiGather_DEP = obj/PPS7LIB.bo obj/AxiMasterSlave.bo obj/Axi4MasterSlave.bo obj/AxiBits.bo obj/GetPutM.bo
AxiGather_INC = 
AxiGather_BSV = /home/yhs/connectal/bsv/AxiGather.bsv

$(eval $(call BSV_BO_RULE, $(AxiGather_BO), $(AxiGather_BSV), $(AxiGather_DEP), $(AxiGather_INC)))

GetPutWithClocks_BO  = obj/GetPutWithClocks.bo
GetPutWithClocks_DEP = obj/MemTypes.bo obj/ConnectalBramFifo.bo obj/Pipe.bo obj/SyncAxisFifo32x8.bo obj/AxiStream.bo
GetPutWithClocks_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
GetPutWithClocks_BSV = /home/yhs/connectal/bsv/GetPutWithClocks.bsv

$(eval $(call BSV_BO_RULE, $(GetPutWithClocks_BO), $(GetPutWithClocks_BSV), $(GetPutWithClocks_DEP), $(GetPutWithClocks_INC)))

MIFO_BO  = obj/MIFO.bo
MIFO_DEP = obj/Arith.bo obj/Pipe.bo
MIFO_INC = 
MIFO_BSV = /home/yhs/connectal/bsv/MIFO.bsv

$(eval $(call BSV_BO_RULE, $(MIFO_BO), $(MIFO_BSV), $(MIFO_DEP), $(MIFO_INC)))

ConnectalPrelude_BO  = obj/ConnectalPrelude.bo
ConnectalPrelude_DEP = 
ConnectalPrelude_INC = 
ConnectalPrelude_BSV = /home/yhs/connectal/bsv/ConnectalPrelude.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalPrelude_BO), $(ConnectalPrelude_BSV), $(ConnectalPrelude_DEP), $(ConnectalPrelude_INC)))

SyncAxisFifo32x8_BO  = obj/SyncAxisFifo32x8.bo
SyncAxisFifo32x8_DEP = obj/CFFIFO.bo obj/AxiBits.bo obj/AxiStream.bo
SyncAxisFifo32x8_INC = 
SyncAxisFifo32x8_BSV = /home/yhs/connectal/bsv/SyncAxisFifo32x8.bsv

$(eval $(call BSV_BO_RULE, $(SyncAxisFifo32x8_BO), $(SyncAxisFifo32x8_BSV), $(SyncAxisFifo32x8_DEP), $(SyncAxisFifo32x8_INC)))

XsimIF_BO  = obj/XsimIF.bo
XsimIF_DEP = 
XsimIF_INC = 
XsimIF_BSV = /home/yhs/connectal/bsv/XsimIF.bsv

$(eval $(call BSV_BO_RULE, $(XsimIF_BO), $(XsimIF_BSV), $(XsimIF_DEP), $(XsimIF_INC)))

AvalonDdr3Controller_BO  = obj/AvalonDdr3Controller.bo
AvalonDdr3Controller_DEP = obj/ConnectalClocks.bo obj/ALTERA_DDR3_WRAPPER.bo
AvalonDdr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AvalonDdr3Controller_BSV = /home/yhs/connectal/bsv/AvalonDdr3Controller.bsv

$(eval $(call BSV_BO_RULE, $(AvalonDdr3Controller_BO), $(AvalonDdr3Controller_BSV), $(AvalonDdr3Controller_DEP), $(AvalonDdr3Controller_INC)))

AvalonDdr3Controller_MOD = mkDdr3
AvalonDdr3Controller_V   = verilog/mkDdr3.v
AvalonDdr3Controller_BO  = obj/AvalonDdr3Controller.bo
AvalonDdr3Controller_BSV = /home/yhs/connectal/bsv/AvalonDdr3Controller.bsv
AvalonDdr3Controller_DEP = obj/ConnectalClocks.bo obj/ALTERA_DDR3_WRAPPER.bo
AvalonDdr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(AvalonDdr3Controller_MOD), $(AvalonDdr3Controller_V), $(AvalonDdr3Controller_BSV), $(AvalonDdr3Controller_DEP), $(AvalonDdr3Controller_INC)))

Dsp48E1_BO  = obj/Dsp48E1.bo
Dsp48E1_DEP = obj/ConnectalClocks.bo
Dsp48E1_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Dsp48E1_BSV = /home/yhs/connectal/bsv/Dsp48E1.bsv

$(eval $(call BSV_BO_RULE, $(Dsp48E1_BO), $(Dsp48E1_BSV), $(Dsp48E1_DEP), $(Dsp48E1_INC)))

HostInterface_BO  = obj/HostInterface.bo
HostInterface_DEP = obj/ConnectalConfig.bo obj/AxiMasterSlave.bo obj/MemTypes.bo obj/Bscan.bo obj/PcieCsr.bo obj/PcieTracer.bo obj/Pipe.bo
HostInterface_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
HostInterface_BSV = /home/yhs/connectal/bsv/HostInterface.bsv

$(eval $(call BSV_BO_RULE, $(HostInterface_BO), $(HostInterface_BSV), $(HostInterface_DEP), $(HostInterface_INC)))

SyncBits_BO  = obj/SyncBits.bo
SyncBits_DEP = 
SyncBits_INC = 
SyncBits_BSV = /home/yhs/connectal/bsv/SyncBits.bsv

$(eval $(call BSV_BO_RULE, $(SyncBits_BO), $(SyncBits_BSV), $(SyncBits_DEP), $(SyncBits_INC)))

APIDefGenerated_BO  = obj/APIDefGenerated.bo
APIDefGenerated_DEP = 
APIDefGenerated_INC = 
APIDefGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/APIDefGenerated.bsv

$(eval $(call BSV_BO_RULE, $(APIDefGenerated_BO), $(APIDefGenerated_BSV), $(APIDefGenerated_DEP), $(APIDefGenerated_INC)))

StructGenerated_BO  = obj/StructGenerated.bo
StructGenerated_DEP = 
StructGenerated_INC = 
StructGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/StructGenerated.bsv

$(eval $(call BSV_BO_RULE, $(StructGenerated_BO), $(StructGenerated_BSV), $(StructGenerated_DEP), $(StructGenerated_INC)))

DeparserGenerated_BO  = obj/DeparserGenerated.bo
DeparserGenerated_DEP = 
DeparserGenerated_INC = 
DeparserGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/DeparserGenerated.bsv

$(eval $(call BSV_BO_RULE, $(DeparserGenerated_BO), $(DeparserGenerated_BSV), $(DeparserGenerated_DEP), $(DeparserGenerated_INC)))

ControlGenerated_BO  = obj/ControlGenerated.bo
ControlGenerated_DEP = obj/Library.bo obj/StructDefines.bo obj/UnionDefines.bo obj/ConnectalTypes.bo obj/Table.bo obj/Engine.bo obj/Pipe.bo obj/Lists.bo obj/SynthBuilder.bo
ControlGenerated_INC = /home/yhs/p4fpga/bsv/library/TieOff.defines /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/SynthBuilder.defines /home/yhs/p4fpga/bsv/library/MatchTable.defines
ControlGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ControlGenerated.bsv

$(eval $(call BSV_BO_RULE, $(ControlGenerated_BO), $(ControlGenerated_BSV), $(ControlGenerated_DEP), $(ControlGenerated_INC)))

UnionGenerated_BO  = obj/UnionGenerated.bo
UnionGenerated_DEP = obj/Ethernet.bo obj/StructDefines.bo
UnionGenerated_INC = 
UnionGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/UnionGenerated.bsv

$(eval $(call BSV_BO_RULE, $(UnionGenerated_BO), $(UnionGenerated_BSV), $(UnionGenerated_DEP), $(UnionGenerated_INC)))

ConnectalTypes_BO  = obj/ConnectalTypes.bo
ConnectalTypes_DEP = 
ConnectalTypes_INC = 
ConnectalTypes_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ConnectalTypes.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalTypes_BO), $(ConnectalTypes_BSV), $(ConnectalTypes_DEP), $(ConnectalTypes_INC)))

APIDeclGenerated_BO  = obj/APIDeclGenerated.bo
APIDeclGenerated_DEP = 
APIDeclGenerated_INC = 
APIDeclGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/APIDeclGenerated.bsv

$(eval $(call BSV_BO_RULE, $(APIDeclGenerated_BO), $(APIDeclGenerated_BSV), $(APIDeclGenerated_DEP), $(APIDeclGenerated_INC)))

ParserGenerated_BO  = obj/ParserGenerated.bo
ParserGenerated_DEP = 
ParserGenerated_INC = 
ParserGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv

$(eval $(call BSV_BO_RULE, $(ParserGenerated_BO), $(ParserGenerated_BSV), $(ParserGenerated_DEP), $(ParserGenerated_INC)))

ProgDeclGenerated_BO  = obj/ProgDeclGenerated.bo
ProgDeclGenerated_DEP = 
ProgDeclGenerated_INC = 
ProgDeclGenerated_BSV = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ProgDeclGenerated.bsv

$(eval $(call BSV_BO_RULE, $(ProgDeclGenerated_BO), $(ProgDeclGenerated_BSV), $(ProgDeclGenerated_DEP), $(ProgDeclGenerated_INC)))

Decoder_BO  = obj/Decoder.bo
Decoder_DEP = obj/Pipe.bo obj/Ethernet.bo
Decoder_INC = 
Decoder_BSV = /home/yhs/sonic-lite/hw/bsv/Decoder.bsv

$(eval $(call BSV_BO_RULE, $(Decoder_BO), $(Decoder_BSV), $(Decoder_DEP), $(Decoder_INC)))

DmaEth_BO  = obj/DmaEth.bo
DmaEth_DEP = obj/ConnectalConfig.bo obj/Pipe.bo obj/MemTypes.bo obj/MemReadEngine.bo obj/MemWriteEngine.bo obj/HostInterface.bo obj/Ethernet.bo obj/Stream.bo obj/PacketBuffer.bo
DmaEth_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
DmaEth_BSV = /home/yhs/sonic-lite/hw/bsv/DmaEth.bsv

$(eval $(call BSV_BO_RULE, $(DmaEth_BO), $(DmaEth_BSV), $(DmaEth_DEP), $(DmaEth_INC)))

DtpSwitch_BO  = obj/DtpSwitch.bo
DtpSwitch_DEP = obj/Pipe.bo obj/Ethernet.bo
DtpSwitch_INC = 
DtpSwitch_BSV = /home/yhs/sonic-lite/hw/bsv/DtpSwitch.bsv

$(eval $(call BSV_BO_RULE, $(DtpSwitch_BO), $(DtpSwitch_BSV), $(DtpSwitch_DEP), $(DtpSwitch_INC)))

DtpSwitch_MOD = mkDtpSwitch
DtpSwitch_V   = verilog/mkDtpSwitch.v
DtpSwitch_BO  = obj/DtpSwitch.bo
DtpSwitch_BSV = /home/yhs/sonic-lite/hw/bsv/DtpSwitch.bsv
DtpSwitch_DEP = obj/Pipe.bo obj/Ethernet.bo
DtpSwitch_INC = 

$(eval $(call BSV_V_RULE, $(DtpSwitch_MOD), $(DtpSwitch_V), $(DtpSwitch_BSV), $(DtpSwitch_DEP), $(DtpSwitch_INC)))

DtpRx_BO  = obj/DtpRx.bo
DtpRx_DEP = obj/Pipe.bo obj/Ethernet.bo
DtpRx_INC = 
DtpRx_BSV = /home/yhs/sonic-lite/hw/bsv/DtpRx.bsv

$(eval $(call BSV_BO_RULE, $(DtpRx_BO), $(DtpRx_BSV), $(DtpRx_DEP), $(DtpRx_INC)))

DtpRx_MOD = mkDtpRxTop
DtpRx_V   = verilog/mkDtpRxTop.v
DtpRx_BO  = obj/DtpRx.bo
DtpRx_BSV = /home/yhs/sonic-lite/hw/bsv/DtpRx.bsv
DtpRx_DEP = obj/Pipe.bo obj/Ethernet.bo
DtpRx_INC = 

$(eval $(call BSV_V_RULE, $(DtpRx_MOD), $(DtpRx_V), $(DtpRx_BSV), $(DtpRx_DEP), $(DtpRx_INC)))

StreamChannel_BO  = obj/StreamChannel.bo
StreamChannel_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/Pipe.bo obj/PacketBuffer.bo obj/PrintTrace.bo obj/StoreAndForward.bo obj/Stream.bo obj/StreamGearbox.bo obj/SharedBuff.bo obj/HeaderSerializer.bo obj/Parser.bo obj/Deparser.bo obj/StructDefines.bo
StreamChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
StreamChannel_BSV = /home/yhs/sonic-lite/hw/bsv/StreamChannel.bsv

$(eval $(call BSV_BO_RULE, $(StreamChannel_BO), $(StreamChannel_BSV), $(StreamChannel_DEP), $(StreamChannel_INC)))

PktGen_BO  = obj/PktGen.bo
PktGen_DEP = obj/Pipe.bo obj/Ethernet.bo obj/Stream.bo obj/PacketBuffer.bo
PktGen_INC = 
PktGen_BSV = /home/yhs/sonic-lite/hw/bsv/PktGen.bsv

$(eval $(call BSV_BO_RULE, $(PktGen_BO), $(PktGen_BSV), $(PktGen_DEP), $(PktGen_INC)))

Lists_BO  = obj/Lists.bo
Lists_DEP = 
Lists_INC = 
Lists_BSV = /home/yhs/sonic-lite/hw/bsv/Lists.bsv

$(eval $(call BSV_BO_RULE, $(Lists_BO), $(Lists_BSV), $(Lists_DEP), $(Lists_INC)))

Stream_BO  = obj/Stream.bo
Stream_DEP = 
Stream_INC = /home/yhs/p4fpga/bsv/library/TieOff.defines
Stream_BSV = /home/yhs/sonic-lite/hw/bsv/Stream.bsv

$(eval $(call BSV_BO_RULE, $(Stream_BO), $(Stream_BSV), $(Stream_DEP), $(Stream_INC)))

DmaController_BO  = obj/DmaController.bo
DmaController_DEP = obj/ConnectalConfig.bo obj/Pipe.bo obj/MemTypes.bo obj/MemReadEngine.bo obj/MemWriteEngine.bo obj/HostInterface.bo
DmaController_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
DmaController_BSV = /home/yhs/sonic-lite/hw/bsv/DmaController.bsv

$(eval $(call BSV_BO_RULE, $(DmaController_BO), $(DmaController_BSV), $(DmaController_DEP), $(DmaController_INC)))

LIFO_BO  = obj/LIFO.bo
LIFO_DEP = 
LIFO_INC = 
LIFO_BSV = /home/yhs/sonic-lite/hw/bsv/LIFO.bsv

$(eval $(call BSV_BO_RULE, $(LIFO_BO), $(LIFO_BSV), $(LIFO_DEP), $(LIFO_INC)))

DtpDCFifo_BO  = obj/DtpDCFifo.bo
DtpDCFifo_DEP = obj/Pipe.bo obj/Ethernet.bo obj/DTP_DCFIFO_WRAPPER.bo
DtpDCFifo_INC = 
DtpDCFifo_BSV = /home/yhs/sonic-lite/hw/bsv/DtpDCFifo.bsv

$(eval $(call BSV_BO_RULE, $(DtpDCFifo_BO), $(DtpDCFifo_BSV), $(DtpDCFifo_DEP), $(DtpDCFifo_INC)))

Dtpm_BO  = obj/Dtpm.bo
Dtpm_DEP = obj/Pipe.bo obj/Ethernet.bo obj/DtpRx.bo obj/DtpTx.bo obj/DtpTypes.bo
Dtpm_INC = 
Dtpm_BSV = /home/yhs/sonic-lite/hw/bsv/Dtpm.bsv

$(eval $(call BSV_BO_RULE, $(Dtpm_BO), $(Dtpm_BSV), $(Dtpm_DEP), $(Dtpm_INC)))

Dtpm_MOD = mkDtpmTop
Dtpm_V   = verilog/mkDtpmTop.v
Dtpm_BO  = obj/Dtpm.bo
Dtpm_BSV = /home/yhs/sonic-lite/hw/bsv/Dtpm.bsv
Dtpm_DEP = obj/Pipe.bo obj/Ethernet.bo obj/DtpRx.bo obj/DtpTx.bo obj/DtpTypes.bo
Dtpm_INC = 

$(eval $(call BSV_V_RULE, $(Dtpm_MOD), $(Dtpm_V), $(Dtpm_BSV), $(Dtpm_DEP), $(Dtpm_INC)))

LedController_BO  = obj/LedController.bo
LedController_DEP = 
LedController_INC = 
LedController_BSV = /home/yhs/sonic-lite/hw/bsv/LedController.bsv

$(eval $(call BSV_BO_RULE, $(LedController_BO), $(LedController_BSV), $(LedController_DEP), $(LedController_INC)))

LedController_MOD = mkLedController
LedController_V   = verilog/mkLedController.v
LedController_BO  = obj/LedController.bo
LedController_BSV = /home/yhs/sonic-lite/hw/bsv/LedController.bsv
LedController_DEP = 
LedController_INC = 

$(eval $(call BSV_V_RULE, $(LedController_MOD), $(LedController_V), $(LedController_BSV), $(LedController_DEP), $(LedController_INC)))

Register_BO  = obj/Register.bo
Register_DEP = obj/Pipe.bo obj/ConnectalBram.bo
Register_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Register_BSV = /home/yhs/sonic-lite/hw/bsv/Register.bsv

$(eval $(call BSV_BO_RULE, $(Register_BO), $(Register_BSV), $(Register_DEP), $(Register_INC)))

ISA_Defs_BO  = obj/ISA_Defs.bo
ISA_Defs_DEP = 
ISA_Defs_INC = 
ISA_Defs_BSV = /home/yhs/sonic-lite/hw/bsv/ISA_Defs.bsv

$(eval $(call BSV_BO_RULE, $(ISA_Defs_BO), $(ISA_Defs_BSV), $(ISA_Defs_DEP), $(ISA_Defs_INC)))

SharedBuffMemServerInternal_BO  = obj/SharedBuffMemServerInternal.bo
SharedBuffMemServerInternal_DEP = obj/MemTypes.bo obj/ConnectalMemory.bo obj/ConnectalClocks.bo obj/SharedBuffMMU.bo obj/ConnectalCompletionBuffer.bo obj/ConnectalConfig.bo obj/Ethernet.bo
SharedBuffMemServerInternal_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuffMemServerInternal_BSV = /home/yhs/sonic-lite/hw/bsv/SharedBuffMemServerInternal.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuffMemServerInternal_BO), $(SharedBuffMemServerInternal_BSV), $(SharedBuffMemServerInternal_DEP), $(SharedBuffMemServerInternal_INC)))

SharedBuffMMU_BO  = obj/SharedBuffMMU.bo
SharedBuffMMU_DEP = obj/ConnectalBram.bo obj/MemTypes.bo obj/ConnectalMemory.bo obj/ConnectalCompletionBuffer.bo obj/Ethernet.bo obj/PrintTrace.bo
SharedBuffMMU_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuffMMU_BSV = /home/yhs/sonic-lite/hw/bsv/SharedBuffMMU.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuffMMU_BO), $(SharedBuffMMU_BSV), $(SharedBuffMMU_DEP), $(SharedBuffMMU_INC)))

HeaderSerializer_BO  = obj/HeaderSerializer.bo
HeaderSerializer_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/Pipe.bo obj/PacketBuffer.bo obj/PrintTrace.bo obj/StoreAndForward.bo obj/Stream.bo obj/SharedBuff.bo
HeaderSerializer_INC = 
HeaderSerializer_BSV = /home/yhs/sonic-lite/hw/bsv/HeaderSerializer.bsv

$(eval $(call BSV_BO_RULE, $(HeaderSerializer_BO), $(HeaderSerializer_BSV), $(HeaderSerializer_DEP), $(HeaderSerializer_INC)))

Encoder_BO  = obj/Encoder.bo
Encoder_DEP = obj/Pipe.bo obj/Ethernet.bo
Encoder_INC = 
Encoder_BSV = /home/yhs/sonic-lite/hw/bsv/Encoder.bsv

$(eval $(call BSV_BO_RULE, $(Encoder_BO), $(Encoder_BSV), $(Encoder_DEP), $(Encoder_INC)))

PinsTop_BO  = obj/PinsTop.bo
PinsTop_DEP = obj/NetTop.bo obj/ALTERA_SI570_WRAPPER.bo
PinsTop_INC = 
PinsTop_BSV = /home/yhs/sonic-lite/hw/bsv/PinsTop.bsv

$(eval $(call BSV_BO_RULE, $(PinsTop_BO), $(PinsTop_BSV), $(PinsTop_DEP), $(PinsTop_INC)))

Sims_BO  = obj/Sims.bo
Sims_DEP = 
Sims_INC = 
Sims_BSV = /home/yhs/sonic-lite/hw/bsv/Sims.bsv

$(eval $(call BSV_BO_RULE, $(Sims_BO), $(Sims_BSV), $(Sims_DEP), $(Sims_INC)))

EthPcsRx_BO  = obj/EthPcsRx.bo
EthPcsRx_DEP = obj/Pipe.bo obj/Ethernet.bo obj/Decoder.bo obj/Descrambler.bo obj/BlockSync.bo
EthPcsRx_INC = 
EthPcsRx_BSV = /home/yhs/sonic-lite/hw/bsv/EthPcsRx.bsv

$(eval $(call BSV_BO_RULE, $(EthPcsRx_BO), $(EthPcsRx_BSV), $(EthPcsRx_DEP), $(EthPcsRx_INC)))

EthPcsRx_MOD = mkEthPcsRxTop
EthPcsRx_V   = verilog/mkEthPcsRxTop.v
EthPcsRx_BO  = obj/EthPcsRx.bo
EthPcsRx_BSV = /home/yhs/sonic-lite/hw/bsv/EthPcsRx.bsv
EthPcsRx_DEP = obj/Pipe.bo obj/Ethernet.bo obj/Decoder.bo obj/Descrambler.bo obj/BlockSync.bo
EthPcsRx_INC = 

$(eval $(call BSV_V_RULE, $(EthPcsRx_MOD), $(EthPcsRx_V), $(EthPcsRx_BSV), $(EthPcsRx_DEP), $(EthPcsRx_INC)))

PriorityEncoder_BO  = obj/PriorityEncoder.bo
PriorityEncoder_DEP = obj/Arith.bo
PriorityEncoder_INC = 
PriorityEncoder_BSV = /home/yhs/sonic-lite/hw/bsv/PriorityEncoder.bsv

$(eval $(call BSV_BO_RULE, $(PriorityEncoder_BO), $(PriorityEncoder_BSV), $(PriorityEncoder_DEP), $(PriorityEncoder_INC)))

Tap_BO  = obj/Tap.bo
Tap_DEP = obj/Pipe.bo obj/Stream.bo obj/PacketBuffer.bo obj/Ethernet.bo
Tap_INC = 
Tap_BSV = /home/yhs/sonic-lite/hw/bsv/Tap.bsv

$(eval $(call BSV_BO_RULE, $(Tap_BO), $(Tap_BSV), $(Tap_DEP), $(Tap_INC)))

SharedBuffMemServer_BO  = obj/SharedBuffMemServer.bo
SharedBuffMemServer_DEP = obj/HostInterface.bo obj/MemTypes.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/SharedBuffMMU.bo obj/SharedBuffMemServerInternal.bo
SharedBuffMemServer_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuffMemServer_BSV = /home/yhs/sonic-lite/hw/bsv/SharedBuffMemServer.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuffMemServer_BO), $(SharedBuffMemServer_BSV), $(SharedBuffMemServer_DEP), $(SharedBuffMemServer_INC)))

EthPktCtrl_BO  = obj/EthPktCtrl.bo
EthPktCtrl_DEP = obj/ALTERA_TRAFFIC_CONTROLLER_WRAPPER.bo
EthPktCtrl_INC = 
EthPktCtrl_BSV = /home/yhs/sonic-lite/hw/bsv/EthPktCtrl.bsv

$(eval $(call BSV_BO_RULE, $(EthPktCtrl_BO), $(EthPktCtrl_BSV), $(EthPktCtrl_DEP), $(EthPktCtrl_INC)))

EthPktCtrl_MOD = mkEthPktCtrl
EthPktCtrl_V   = verilog/mkEthPktCtrl.v
EthPktCtrl_BO  = obj/EthPktCtrl.bo
EthPktCtrl_BSV = /home/yhs/sonic-lite/hw/bsv/EthPktCtrl.bsv
EthPktCtrl_DEP = obj/ALTERA_TRAFFIC_CONTROLLER_WRAPPER.bo
EthPktCtrl_INC = 

$(eval $(call BSV_V_RULE, $(EthPktCtrl_MOD), $(EthPktCtrl_V), $(EthPktCtrl_BSV), $(EthPktCtrl_DEP), $(EthPktCtrl_INC)))

DbgTypes_BO  = obj/DbgTypes.bo
DbgTypes_DEP = 
DbgTypes_INC = 
DbgTypes_BSV = /home/yhs/sonic-lite/hw/bsv/DbgTypes.bsv

$(eval $(call BSV_BO_RULE, $(DbgTypes_BO), $(DbgTypes_BSV), $(DbgTypes_DEP), $(DbgTypes_INC)))

DE5Pins_BO  = obj/DE5Pins.bo
DE5Pins_DEP = obj/ConnectalClocks.bo obj/LedController.bo obj/PushButtonController.bo obj/Ethernet.bo obj/AlteraExtra.bo obj/ALTERA_SI570_WRAPPER.bo obj/AlteraMacWrap.bo
DE5Pins_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
DE5Pins_BSV = /home/yhs/sonic-lite/hw/bsv/DE5Pins.bsv

$(eval $(call BSV_BO_RULE, $(DE5Pins_BO), $(DE5Pins_BSV), $(DE5Pins_DEP), $(DE5Pins_INC)))

DtpController_BO  = obj/DtpController.bo
DtpController_DEP = obj/Pipe.bo obj/GetPutWithClocks.bo obj/Ethernet.bo
DtpController_INC = 
DtpController_BSV = /home/yhs/sonic-lite/hw/bsv/DtpController.bsv

$(eval $(call BSV_BO_RULE, $(DtpController_BO), $(DtpController_BSV), $(DtpController_DEP), $(DtpController_INC)))

DtpTx_BO  = obj/DtpTx.bo
DtpTx_DEP = obj/Pipe.bo obj/Ethernet.bo obj/DtpTypes.bo
DtpTx_INC = 
DtpTx_BSV = /home/yhs/sonic-lite/hw/bsv/DtpTx.bsv

$(eval $(call BSV_BO_RULE, $(DtpTx_BO), $(DtpTx_BSV), $(DtpTx_DEP), $(DtpTx_INC)))

DtpTx_MOD = mkDtpTxTop
DtpTx_V   = verilog/mkDtpTxTop.v
DtpTx_BO  = obj/DtpTx.bo
DtpTx_BSV = /home/yhs/sonic-lite/hw/bsv/DtpTx.bsv
DtpTx_DEP = obj/Pipe.bo obj/Ethernet.bo obj/DtpTypes.bo
DtpTx_INC = 

$(eval $(call BSV_V_RULE, $(DtpTx_MOD), $(DtpTx_V), $(DtpTx_BSV), $(DtpTx_DEP), $(DtpTx_INC)))

CPU_Common_BO  = obj/CPU_Common.bo
CPU_Common_DEP = 
CPU_Common_INC = 
CPU_Common_BSV = /home/yhs/sonic-lite/hw/bsv/CPU_Common.bsv

$(eval $(call BSV_BO_RULE, $(CPU_Common_BO), $(CPU_Common_BSV), $(CPU_Common_DEP), $(CPU_Common_INC)))

StringUtils_BO  = obj/StringUtils.bo
StringUtils_DEP = 
StringUtils_INC = 
StringUtils_BSV = /home/yhs/sonic-lite/hw/bsv/StringUtils.bsv

$(eval $(call BSV_BO_RULE, $(StringUtils_BO), $(StringUtils_BSV), $(StringUtils_DEP), $(StringUtils_INC)))

MemMgmt_BO  = obj/MemMgmt.bo
MemMgmt_DEP = obj/ConfigCounter.bo obj/Pipe.bo obj/ConnectalBram.bo obj/ConnectalMemory.bo obj/Ethernet.bo obj/SharedBuffMMU.bo obj/DbgDefs.bo
MemMgmt_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemMgmt_BSV = /home/yhs/sonic-lite/hw/bsv/MemMgmt.bsv

$(eval $(call BSV_BO_RULE, $(MemMgmt_BO), $(MemMgmt_BSV), $(MemMgmt_DEP), $(MemMgmt_INC)))

MatchTable_BO  = obj/MatchTable.bo
MatchTable_DEP = obj/Pipe.bo obj/StringUtils.bo obj/Bcam.bo obj/BcamTypes.bo obj/PrintTrace.bo
MatchTable_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MatchTable_BSV = /home/yhs/sonic-lite/hw/bsv/MatchTable.bsv

$(eval $(call BSV_BO_RULE, $(MatchTable_BO), $(MatchTable_BSV), $(MatchTable_DEP), $(MatchTable_INC)))

DbgDefs_BO  = obj/DbgDefs.bo
DbgDefs_DEP = 
DbgDefs_INC = 
DbgDefs_BSV = /home/yhs/sonic-lite/hw/bsv/DbgDefs.bsv

$(eval $(call BSV_BO_RULE, $(DbgDefs_BO), $(DbgDefs_BSV), $(DbgDefs_DEP), $(DbgDefs_INC)))

Ddr3Controller_BO  = obj/Ddr3Controller.bo
Ddr3Controller_DEP = obj/AxiDdr3Wrapper.bo obj/AxiBits.bo obj/Axi4MasterSlave.bo obj/ConnectalClocks.bo
Ddr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Ddr3Controller_BSV = /home/yhs/sonic-lite/hw/bsv/Ddr3Controller.bsv

$(eval $(call BSV_BO_RULE, $(Ddr3Controller_BO), $(Ddr3Controller_BSV), $(Ddr3Controller_DEP), $(Ddr3Controller_INC)))

Ddr3Controller_MOD = mkDdr3
Ddr3Controller_V   = verilog/mkDdr3.v
Ddr3Controller_BO  = obj/Ddr3Controller.bo
Ddr3Controller_BSV = /home/yhs/sonic-lite/hw/bsv/Ddr3Controller.bsv
Ddr3Controller_DEP = obj/AxiDdr3Wrapper.bo obj/AxiBits.bo obj/Axi4MasterSlave.bo obj/ConnectalClocks.bo
Ddr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(Ddr3Controller_MOD), $(Ddr3Controller_V), $(Ddr3Controller_BSV), $(Ddr3Controller_DEP), $(Ddr3Controller_INC)))

Timestamp_BO  = obj/Timestamp.bo
Timestamp_DEP = 
Timestamp_INC = 
Timestamp_BSV = /home/yhs/sonic-lite/hw/bsv/Timestamp.bsv

$(eval $(call BSV_BO_RULE, $(Timestamp_BO), $(Timestamp_BSV), $(Timestamp_DEP), $(Timestamp_INC)))

XilinxEthPhy_BO  = obj/XilinxEthPhy.bo
XilinxEthPhy_DEP = obj/Pipe.bo obj/XilinxPhyWrap.bo
XilinxEthPhy_INC = 
XilinxEthPhy_BSV = /home/yhs/sonic-lite/hw/bsv/XilinxEthPhy.bsv

$(eval $(call BSV_BO_RULE, $(XilinxEthPhy_BO), $(XilinxEthPhy_BSV), $(XilinxEthPhy_DEP), $(XilinxEthPhy_INC)))

Ethernet_BO  = obj/Ethernet.bo
Ethernet_DEP = obj/Pipe.bo obj/Stream.bo
Ethernet_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Ethernet_BSV = /home/yhs/sonic-lite/hw/bsv/Ethernet.bsv

$(eval $(call BSV_BO_RULE, $(Ethernet_BO), $(Ethernet_BSV), $(Ethernet_DEP), $(Ethernet_INC)))

StreamGearbox_BO  = obj/StreamGearbox.bo
StreamGearbox_DEP = obj/Stream.bo
StreamGearbox_INC = 
StreamGearbox_BSV = /home/yhs/sonic-lite/hw/bsv/StreamGearbox.bsv

$(eval $(call BSV_BO_RULE, $(StreamGearbox_BO), $(StreamGearbox_BSV), $(StreamGearbox_DEP), $(StreamGearbox_INC)))

IMem_BO  = obj/IMem.bo
IMem_DEP = obj/CPU_Common.bo obj/StringUtils.bo
IMem_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
IMem_BSV = /home/yhs/sonic-lite/hw/bsv/IMem.bsv

$(eval $(call BSV_BO_RULE, $(IMem_BO), $(IMem_BSV), $(IMem_DEP), $(IMem_INC)))

AlteraEthPhy_BO  = obj/AlteraEthPhy.bo
AlteraEthPhy_DEP = obj/Pipe.bo obj/Ethernet.bo obj/ALTERA_ETH_10GBASER_WRAPPER.bo
AlteraEthPhy_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AlteraEthPhy_BSV = /home/yhs/sonic-lite/hw/bsv/AlteraEthPhy.bsv

$(eval $(call BSV_BO_RULE, $(AlteraEthPhy_BO), $(AlteraEthPhy_BSV), $(AlteraEthPhy_DEP), $(AlteraEthPhy_INC)))

AlteraEthPhy_MOD = mkAlteraEthPhy
AlteraEthPhy_V   = verilog/mkAlteraEthPhy.v
AlteraEthPhy_BO  = obj/AlteraEthPhy.bo
AlteraEthPhy_BSV = /home/yhs/sonic-lite/hw/bsv/AlteraEthPhy.bsv
AlteraEthPhy_DEP = obj/Pipe.bo obj/Ethernet.bo obj/ALTERA_ETH_10GBASER_WRAPPER.bo
AlteraEthPhy_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(AlteraEthPhy_MOD), $(AlteraEthPhy_V), $(AlteraEthPhy_BSV), $(AlteraEthPhy_DEP), $(AlteraEthPhy_INC)))

BlockSync_BO  = obj/BlockSync.bo
BlockSync_DEP = obj/Pipe.bo
BlockSync_INC = 
BlockSync_BSV = /home/yhs/sonic-lite/hw/bsv/BlockSync.bsv

$(eval $(call BSV_BO_RULE, $(BlockSync_BO), $(BlockSync_BSV), $(BlockSync_DEP), $(BlockSync_INC)))

TDM_BO  = obj/TDM.bo
TDM_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/GenericMatchTable.bo obj/MemTypes.bo obj/PacketTypes.bo obj/PacketBuffer.bo obj/Pipe.bo obj/SharedBuff.bo obj/SharedBuffMMU.bo obj/StoreAndForward.bo obj/TdmTypes.bo obj/TxChannel.bo obj/Sims.bo
TDM_INC = 
TDM_BSV = /home/yhs/sonic-lite/hw/bsv/TDM.bsv

$(eval $(call BSV_BO_RULE, $(TDM_BO), $(TDM_BSV), $(TDM_DEP), $(TDM_INC)))

TxChannel_BO  = obj/TxChannel.bo
TxChannel_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/Pipe.bo obj/TxRx.bo obj/Utils.bo obj/PacketBuffer.bo obj/PrintTrace.bo obj/StoreAndForward.bo obj/Stream.bo obj/SharedBuff.bo obj/HeaderSerializer.bo obj/Deparser.bo obj/StructDefines.bo
TxChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
TxChannel_BSV = /home/yhs/sonic-lite/hw/bsv/TxChannel.bsv

$(eval $(call BSV_BO_RULE, $(TxChannel_BO), $(TxChannel_BSV), $(TxChannel_DEP), $(TxChannel_INC)))

DtpTypes_BO  = obj/DtpTypes.bo
DtpTypes_DEP = 
DtpTypes_INC = 
DtpTypes_BSV = /home/yhs/sonic-lite/hw/bsv/DtpTypes.bsv

$(eval $(call BSV_BO_RULE, $(DtpTypes_BO), $(DtpTypes_BSV), $(DtpTypes_DEP), $(DtpTypes_INC)))

StoreAndForward_BO  = obj/StoreAndForward.bo
StoreAndForward_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemTypes.bo obj/MemServer.bo obj/MemServerInternal.bo obj/MemMgmt.bo obj/PacketBuffer.bo obj/SharedBuff.bo obj/SharedBuffMMU.bo obj/Stream.bo obj/StreamGearbox.bo obj/Pipe.bo obj/PrintTrace.bo obj/ConnectalConfig.bo
StoreAndForward_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
StoreAndForward_BSV = /home/yhs/sonic-lite/hw/bsv/StoreAndForward.bsv

$(eval $(call BSV_BO_RULE, $(StoreAndForward_BO), $(StoreAndForward_BSV), $(StoreAndForward_DEP), $(StoreAndForward_INC)))

PriorityQueue_BO  = obj/PriorityQueue.bo
PriorityQueue_DEP = obj/PriorityEncoder.bo
PriorityQueue_INC = 
PriorityQueue_BSV = /home/yhs/sonic-lite/hw/bsv/PriorityQueue.bsv

$(eval $(call BSV_BO_RULE, $(PriorityQueue_BO), $(PriorityQueue_BSV), $(PriorityQueue_DEP), $(PriorityQueue_INC)))

Scrambler_BO  = obj/Scrambler.bo
Scrambler_DEP = obj/Pipe.bo
Scrambler_INC = 
Scrambler_BSV = /home/yhs/sonic-lite/hw/bsv/Scrambler.bsv

$(eval $(call BSV_BO_RULE, $(Scrambler_BO), $(Scrambler_BSV), $(Scrambler_DEP), $(Scrambler_INC)))

Descrambler_BO  = obj/Descrambler.bo
Descrambler_DEP = obj/Pipe.bo
Descrambler_INC = 
Descrambler_BSV = /home/yhs/sonic-lite/hw/bsv/Descrambler.bsv

$(eval $(call BSV_BO_RULE, $(Descrambler_BO), $(Descrambler_BSV), $(Descrambler_DEP), $(Descrambler_INC)))

PushButtonController_BO  = obj/PushButtonController.bo
PushButtonController_DEP = 
PushButtonController_INC = 
PushButtonController_BSV = /home/yhs/sonic-lite/hw/bsv/PushButtonController.bsv

$(eval $(call BSV_BO_RULE, $(PushButtonController_BO), $(PushButtonController_BSV), $(PushButtonController_DEP), $(PushButtonController_INC)))

PushButtonController_MOD = mkPushButtonController
PushButtonController_V   = verilog/mkPushButtonController.v
PushButtonController_BO  = obj/PushButtonController.bo
PushButtonController_BSV = /home/yhs/sonic-lite/hw/bsv/PushButtonController.bsv
PushButtonController_DEP = 
PushButtonController_INC = 

$(eval $(call BSV_V_RULE, $(PushButtonController_MOD), $(PushButtonController_V), $(PushButtonController_BSV), $(PushButtonController_DEP), $(PushButtonController_INC)))

EthSonicPma_BO  = obj/EthSonicPma.bo
EthSonicPma_DEP = obj/Pipe.bo obj/ConnectalClocks.bo obj/Ethernet.bo obj/ALTERA_ETH_PMA_QSYS.bo
EthSonicPma_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
EthSonicPma_BSV = /home/yhs/sonic-lite/hw/bsv/EthSonicPma.bsv

$(eval $(call BSV_BO_RULE, $(EthSonicPma_BO), $(EthSonicPma_BSV), $(EthSonicPma_DEP), $(EthSonicPma_INC)))

PacketBuffer_BO  = obj/PacketBuffer.bo
PacketBuffer_DEP = obj/Pipe.bo obj/Stream.bo obj/DbgDefs.bo obj/Ethernet.bo
PacketBuffer_INC = 
PacketBuffer_BSV = /home/yhs/sonic-lite/hw/bsv/PacketBuffer.bsv

$(eval $(call BSV_BO_RULE, $(PacketBuffer_BO), $(PacketBuffer_BSV), $(PacketBuffer_DEP), $(PacketBuffer_INC)))

EthPcsTx_BO  = obj/EthPcsTx.bo
EthPcsTx_DEP = obj/Pipe.bo obj/Ethernet.bo obj/Encoder.bo obj/Scrambler.bo
EthPcsTx_INC = 
EthPcsTx_BSV = /home/yhs/sonic-lite/hw/bsv/EthPcsTx.bsv

$(eval $(call BSV_BO_RULE, $(EthPcsTx_BO), $(EthPcsTx_BSV), $(EthPcsTx_DEP), $(EthPcsTx_INC)))

EthPcsTx_MOD = mkEthPcsTxTop
EthPcsTx_V   = verilog/mkEthPcsTxTop.v
EthPcsTx_BO  = obj/EthPcsTx.bo
EthPcsTx_BSV = /home/yhs/sonic-lite/hw/bsv/EthPcsTx.bsv
EthPcsTx_DEP = obj/Pipe.bo obj/Ethernet.bo obj/Encoder.bo obj/Scrambler.bo
EthPcsTx_INC = 

$(eval $(call BSV_V_RULE, $(EthPcsTx_MOD), $(EthPcsTx_V), $(EthPcsTx_BSV), $(EthPcsTx_DEP), $(EthPcsTx_INC)))

EthPhy_BO  = obj/EthPhy.bo
EthPhy_DEP = obj/Pipe.bo obj/Ethernet.bo obj/EthSonicPma.bo obj/EthPcsTx.bo obj/EthPcsRx.bo obj/DtpTx.bo obj/DtpRx.bo obj/DtpTypes.bo obj/DtpSwitch.bo obj/DtpDCFifo.bo obj/ALTERA_SI570_WRAPPER.bo obj/ALTERA_EDGE_DETECTOR_WRAPPER.bo obj/AlteraExtra.bo
EthPhy_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
EthPhy_BSV = /home/yhs/sonic-lite/hw/bsv/EthPhy.bsv

$(eval $(call BSV_BO_RULE, $(EthPhy_BO), $(EthPhy_BSV), $(EthPhy_DEP), $(EthPhy_INC)))

CPU_BO  = obj/CPU.bo
CPU_DEP = obj/Ethernet.bo obj/Pipe.bo obj/TxRx.bo obj/Utils.bo obj/ISA_Defs.bo obj/CPU_Common.bo
CPU_INC = 
CPU_BSV = /home/yhs/sonic-lite/hw/bsv/CPU.bsv

$(eval $(call BSV_BO_RULE, $(CPU_BO), $(CPU_BSV), $(CPU_DEP), $(CPU_INC)))

AlteraExtra_BO  = obj/AlteraExtra.bo
AlteraExtra_DEP = 
AlteraExtra_INC = 
AlteraExtra_BSV = /home/yhs/sonic-lite/hw/bsv/AlteraExtra.bsv

$(eval $(call BSV_BO_RULE, $(AlteraExtra_BO), $(AlteraExtra_BSV), $(AlteraExtra_DEP), $(AlteraExtra_INC)))

CRC32_BO  = obj/CRC32.bo
CRC32_DEP = 
CRC32_INC = 
CRC32_BSV = /home/yhs/sonic-lite/hw/bsv/CRC32.bsv

$(eval $(call BSV_BO_RULE, $(CRC32_BO), $(CRC32_BSV), $(CRC32_DEP), $(CRC32_INC)))

EthMac_BO  = obj/EthMac.bo
EthMac_DEP = obj/Pipe.bo obj/Stream.bo obj/Ethernet.bo
EthMac_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
EthMac_BSV = /home/yhs/sonic-lite/hw/bsv/EthMac.bsv

$(eval $(call BSV_BO_RULE, $(EthMac_BO), $(EthMac_BSV), $(EthMac_DEP), $(EthMac_INC)))

PrintTrace_BO  = obj/PrintTrace.bo
PrintTrace_DEP = 
PrintTrace_INC = 
PrintTrace_BSV = /home/yhs/sonic-lite/hw/bsv/PrintTrace.bsv

$(eval $(call BSV_BO_RULE, $(PrintTrace_BO), $(PrintTrace_BSV), $(PrintTrace_DEP), $(PrintTrace_INC)))

Utils_BO  = obj/Utils.bo
Utils_DEP = 
Utils_INC = 
Utils_BSV = /home/yhs/sonic-lite/hw/bsv/Utils.bsv

$(eval $(call BSV_BO_RULE, $(Utils_BO), $(Utils_BSV), $(Utils_DEP), $(Utils_INC)))

SynthBuilder_BO  = obj/SynthBuilder.bo
SynthBuilder_DEP = 
SynthBuilder_INC = 
SynthBuilder_BSV = /home/yhs/sonic-lite/hw/bsv/SynthBuilder.bsv

$(eval $(call BSV_BO_RULE, $(SynthBuilder_BO), $(SynthBuilder_BSV), $(SynthBuilder_DEP), $(SynthBuilder_INC)))

RxChannel_BO  = obj/RxChannel.bo
RxChannel_DEP = obj/DbgTypes.bo obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/PacketBuffer.bo obj/Pipe.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/Stream.bo obj/Tap.bo obj/HostChannel.bo obj/Parser.bo obj/StructDefines.bo
RxChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
RxChannel_BSV = /home/yhs/sonic-lite/hw/bsv/RxChannel.bsv

$(eval $(call BSV_BO_RULE, $(RxChannel_BO), $(RxChannel_BSV), $(RxChannel_DEP), $(RxChannel_INC)))

TxRx_BO  = obj/TxRx.bo
TxRx_DEP = obj/Pipe.bo
TxRx_INC = 
TxRx_BSV = /home/yhs/sonic-lite/hw/bsv/TxRx.bsv

$(eval $(call BSV_BO_RULE, $(TxRx_BO), $(TxRx_BSV), $(TxRx_DEP), $(TxRx_INC)))

SharedBuff_BO  = obj/SharedBuff.bo
SharedBuff_DEP = obj/ConnectalBram.bo obj/ConnectalMemory.bo obj/MemTypes.bo obj/SharedBuffMemServer.bo obj/SharedBuffMemServerInternal.bo obj/SharedBuffMMU.bo obj/MemMgmt.bo obj/PhysMemSlaveFromBram.bo obj/Ethernet.bo obj/DbgDefs.bo obj/ConnectalConfig.bo
SharedBuff_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuff_BSV = /home/yhs/sonic-lite/hw/bsv/SharedBuff.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuff_BO), $(SharedBuff_BSV), $(SharedBuff_DEP), $(SharedBuff_INC)))

HostChannel_BO  = obj/HostChannel.bo
HostChannel_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/MemMgmt.bo obj/MemTypes.bo obj/PacketBuffer.bo obj/Pipe.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/Stream.bo obj/StreamGearbox.bo obj/Tap.bo obj/Parser.bo obj/StructDefines.bo
HostChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
HostChannel_BSV = /home/yhs/sonic-lite/hw/bsv/HostChannel.bsv

$(eval $(call BSV_BO_RULE, $(HostChannel_BO), $(HostChannel_BSV), $(HostChannel_DEP), $(HostChannel_INC)))

Xbar_BO  = obj/Xbar.bo
Xbar_DEP = obj/Ethernet.bo obj/PacketBuffer.bo obj/StructDefines.bo
Xbar_INC = 
Xbar_BSV = /home/yhs/sonic-lite/hw/bsv/Xbar.bsv

$(eval $(call BSV_BO_RULE, $(Xbar_BO), $(Xbar_BSV), $(Xbar_DEP), $(Xbar_INC)))

NfsumePins_BO  = obj/NfsumePins.bo
NfsumePins_DEP = obj/LedController.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/XilinxEthPhy.bo
NfsumePins_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
NfsumePins_BSV = /home/yhs/sonic-lite/hw/bsv/NfsumePins.bsv

$(eval $(call BSV_BO_RULE, $(NfsumePins_BO), $(NfsumePins_BSV), $(NfsumePins_DEP), $(NfsumePins_INC)))

MMURequest_BO  = obj/MMURequest.bo
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv

$(eval $(call BSV_BO_RULE, $(MMURequest_BO), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMURequest_MOD = mkMMURequestInput
MMURequest_V   = verilog/mkMMURequestInput.v
MMURequest_BO  = obj/MMURequest.bo
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 

$(eval $(call BSV_V_RULE, $(MMURequest_MOD), $(MMURequest_V), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMURequest_MOD = mkMMURequestWrapperMemPortalPipes
MMURequest_V   = verilog/mkMMURequestWrapperMemPortalPipes.v
MMURequest_BO  = obj/MMURequest.bo
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 

$(eval $(call BSV_V_RULE, $(MMURequest_MOD), $(MMURequest_V), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMURequest_MOD = mkMMURequestOutputPipes
MMURequest_V   = verilog/mkMMURequestOutputPipes.v
MMURequest_BO  = obj/MMURequest.bo
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 

$(eval $(call BSV_V_RULE, $(MMURequest_MOD), $(MMURequest_V), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMURequest_MOD = mkMMURequestOutput
MMURequest_V   = verilog/mkMMURequestOutput.v
MMURequest_BO  = obj/MMURequest.bo
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 

$(eval $(call BSV_V_RULE, $(MMURequest_MOD), $(MMURequest_V), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMURequest_MOD = mkMMURequestInverter
MMURequest_V   = verilog/mkMMURequestInverter.v
MMURequest_BO  = obj/MMURequest.bo
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 

$(eval $(call BSV_V_RULE, $(MMURequest_MOD), $(MMURequest_V), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMURequest_MOD = mkMMURequestInverterV
MMURequest_V   = verilog/mkMMURequestInverterV.v
MMURequest_BO  = obj/MMURequest.bo
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 

$(eval $(call BSV_V_RULE, $(MMURequest_MOD), $(MMURequest_V), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMURequest_MOD = mkMMURequestProxySynth
MMURequest_V   = verilog/mkMMURequestProxySynth.v
MMURequest_BO  = obj/MMURequest.bo
MMURequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMURequest.bsv
MMURequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMURequest_INC = 

$(eval $(call BSV_V_RULE, $(MMURequest_MOD), $(MMURequest_V), $(MMURequest_BSV), $(MMURequest_DEP), $(MMURequest_INC)))

MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv

$(eval $(call BSV_BO_RULE, $(MMUIndication_BO), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

MMUIndication_MOD = mkMMUIndicationInput
MMUIndication_V   = verilog/mkMMUIndicationInput.v
MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 

$(eval $(call BSV_V_RULE, $(MMUIndication_MOD), $(MMUIndication_V), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

MMUIndication_MOD = mkMMUIndicationWrapperMemPortalPipes
MMUIndication_V   = verilog/mkMMUIndicationWrapperMemPortalPipes.v
MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 

$(eval $(call BSV_V_RULE, $(MMUIndication_MOD), $(MMUIndication_V), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

MMUIndication_MOD = mkMMUIndicationOutputPipes
MMUIndication_V   = verilog/mkMMUIndicationOutputPipes.v
MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 

$(eval $(call BSV_V_RULE, $(MMUIndication_MOD), $(MMUIndication_V), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

MMUIndication_MOD = mkMMUIndicationOutput
MMUIndication_V   = verilog/mkMMUIndicationOutput.v
MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 

$(eval $(call BSV_V_RULE, $(MMUIndication_MOD), $(MMUIndication_V), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

MMUIndication_MOD = mkMMUIndicationInverter
MMUIndication_V   = verilog/mkMMUIndicationInverter.v
MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 

$(eval $(call BSV_V_RULE, $(MMUIndication_MOD), $(MMUIndication_V), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

MMUIndication_MOD = mkMMUIndicationInverterV
MMUIndication_V   = verilog/mkMMUIndicationInverterV.v
MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 

$(eval $(call BSV_V_RULE, $(MMUIndication_MOD), $(MMUIndication_V), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

MMUIndication_MOD = mkMMUIndicationProxySynth
MMUIndication_V   = verilog/mkMMUIndicationProxySynth.v
MMUIndication_BO  = obj/MMUIndication.bo
MMUIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MMUIndication.bsv
MMUIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MMUIndication_INC = 

$(eval $(call BSV_V_RULE, $(MMUIndication_MOD), $(MMUIndication_V), $(MMUIndication_BSV), $(MMUIndication_DEP), $(MMUIndication_INC)))

IfcNames_BO  = obj/IfcNames.bo
IfcNames_DEP = 
IfcNames_INC = 
IfcNames_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/IfcNames.bsv

$(eval $(call BSV_BO_RULE, $(IfcNames_BO), $(IfcNames_BSV), $(IfcNames_DEP), $(IfcNames_INC)))

XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv

$(eval $(call BSV_BO_RULE, $(XsimMsgIndication_BO), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

XsimMsgIndication_MOD = mkXsimMsgIndicationInput
XsimMsgIndication_V   = verilog/mkXsimMsgIndicationInput.v
XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgIndication_MOD), $(XsimMsgIndication_V), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

XsimMsgIndication_MOD = mkXsimMsgIndicationWrapperMemPortalPipes
XsimMsgIndication_V   = verilog/mkXsimMsgIndicationWrapperMemPortalPipes.v
XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgIndication_MOD), $(XsimMsgIndication_V), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

XsimMsgIndication_MOD = mkXsimMsgIndicationOutputPipes
XsimMsgIndication_V   = verilog/mkXsimMsgIndicationOutputPipes.v
XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgIndication_MOD), $(XsimMsgIndication_V), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

XsimMsgIndication_MOD = mkXsimMsgIndicationOutput
XsimMsgIndication_V   = verilog/mkXsimMsgIndicationOutput.v
XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgIndication_MOD), $(XsimMsgIndication_V), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

XsimMsgIndication_MOD = mkXsimMsgIndicationInverter
XsimMsgIndication_V   = verilog/mkXsimMsgIndicationInverter.v
XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgIndication_MOD), $(XsimMsgIndication_V), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

XsimMsgIndication_MOD = mkXsimMsgIndicationInverterV
XsimMsgIndication_V   = verilog/mkXsimMsgIndicationInverterV.v
XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgIndication_MOD), $(XsimMsgIndication_V), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

XsimMsgIndication_MOD = mkXsimMsgIndicationProxySynth
XsimMsgIndication_V   = verilog/mkXsimMsgIndicationProxySynth.v
XsimMsgIndication_BO  = obj/XsimMsgIndication.bo
XsimMsgIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgIndication.bsv
XsimMsgIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgIndication_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgIndication_MOD), $(XsimMsgIndication_V), $(XsimMsgIndication_BSV), $(XsimMsgIndication_DEP), $(XsimMsgIndication_INC)))

ConnectalProjectConfig_BO  = obj/ConnectalProjectConfig.bo
ConnectalProjectConfig_DEP = 
ConnectalProjectConfig_INC = 
ConnectalProjectConfig_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalProjectConfig_BO), $(ConnectalProjectConfig_BSV), $(ConnectalProjectConfig_DEP), $(ConnectalProjectConfig_INC)))

MainRequest_BO  = obj/MainRequest.bo
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv

$(eval $(call BSV_BO_RULE, $(MainRequest_BO), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainRequest_MOD = mkMainRequestInput
MainRequest_V   = verilog/mkMainRequestInput.v
MainRequest_BO  = obj/MainRequest.bo
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 

$(eval $(call BSV_V_RULE, $(MainRequest_MOD), $(MainRequest_V), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainRequest_MOD = mkMainRequestWrapperMemPortalPipes
MainRequest_V   = verilog/mkMainRequestWrapperMemPortalPipes.v
MainRequest_BO  = obj/MainRequest.bo
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 

$(eval $(call BSV_V_RULE, $(MainRequest_MOD), $(MainRequest_V), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainRequest_MOD = mkMainRequestOutputPipes
MainRequest_V   = verilog/mkMainRequestOutputPipes.v
MainRequest_BO  = obj/MainRequest.bo
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 

$(eval $(call BSV_V_RULE, $(MainRequest_MOD), $(MainRequest_V), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainRequest_MOD = mkMainRequestOutput
MainRequest_V   = verilog/mkMainRequestOutput.v
MainRequest_BO  = obj/MainRequest.bo
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 

$(eval $(call BSV_V_RULE, $(MainRequest_MOD), $(MainRequest_V), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainRequest_MOD = mkMainRequestInverter
MainRequest_V   = verilog/mkMainRequestInverter.v
MainRequest_BO  = obj/MainRequest.bo
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 

$(eval $(call BSV_V_RULE, $(MainRequest_MOD), $(MainRequest_V), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainRequest_MOD = mkMainRequestInverterV
MainRequest_V   = verilog/mkMainRequestInverterV.v
MainRequest_BO  = obj/MainRequest.bo
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 

$(eval $(call BSV_V_RULE, $(MainRequest_MOD), $(MainRequest_V), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainRequest_MOD = mkMainRequestProxySynth
MainRequest_V   = verilog/mkMainRequestProxySynth.v
MainRequest_BO  = obj/MainRequest.bo
MainRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainRequest.bsv
MainRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainRequest_INC = 

$(eval $(call BSV_V_RULE, $(MainRequest_MOD), $(MainRequest_V), $(MainRequest_BSV), $(MainRequest_DEP), $(MainRequest_INC)))

MainIndication_BO  = obj/MainIndication.bo
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv

$(eval $(call BSV_BO_RULE, $(MainIndication_BO), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MainIndication_MOD = mkMainIndicationInput
MainIndication_V   = verilog/mkMainIndicationInput.v
MainIndication_BO  = obj/MainIndication.bo
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 

$(eval $(call BSV_V_RULE, $(MainIndication_MOD), $(MainIndication_V), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MainIndication_MOD = mkMainIndicationWrapperMemPortalPipes
MainIndication_V   = verilog/mkMainIndicationWrapperMemPortalPipes.v
MainIndication_BO  = obj/MainIndication.bo
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 

$(eval $(call BSV_V_RULE, $(MainIndication_MOD), $(MainIndication_V), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MainIndication_MOD = mkMainIndicationOutputPipes
MainIndication_V   = verilog/mkMainIndicationOutputPipes.v
MainIndication_BO  = obj/MainIndication.bo
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 

$(eval $(call BSV_V_RULE, $(MainIndication_MOD), $(MainIndication_V), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MainIndication_MOD = mkMainIndicationOutput
MainIndication_V   = verilog/mkMainIndicationOutput.v
MainIndication_BO  = obj/MainIndication.bo
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 

$(eval $(call BSV_V_RULE, $(MainIndication_MOD), $(MainIndication_V), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MainIndication_MOD = mkMainIndicationInverter
MainIndication_V   = verilog/mkMainIndicationInverter.v
MainIndication_BO  = obj/MainIndication.bo
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 

$(eval $(call BSV_V_RULE, $(MainIndication_MOD), $(MainIndication_V), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MainIndication_MOD = mkMainIndicationInverterV
MainIndication_V   = verilog/mkMainIndicationInverterV.v
MainIndication_BO  = obj/MainIndication.bo
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 

$(eval $(call BSV_V_RULE, $(MainIndication_MOD), $(MainIndication_V), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MainIndication_MOD = mkMainIndicationProxySynth
MainIndication_V   = verilog/mkMainIndicationProxySynth.v
MainIndication_BO  = obj/MainIndication.bo
MainIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MainIndication.bsv
MainIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MainIndication_INC = 

$(eval $(call BSV_V_RULE, $(MainIndication_MOD), $(MainIndication_V), $(MainIndication_BSV), $(MainIndication_DEP), $(MainIndication_INC)))

MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv

$(eval $(call BSV_BO_RULE, $(MemServerRequest_BO), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

MemServerRequest_MOD = mkMemServerRequestInput
MemServerRequest_V   = verilog/mkMemServerRequestInput.v
MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 

$(eval $(call BSV_V_RULE, $(MemServerRequest_MOD), $(MemServerRequest_V), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

MemServerRequest_MOD = mkMemServerRequestWrapperMemPortalPipes
MemServerRequest_V   = verilog/mkMemServerRequestWrapperMemPortalPipes.v
MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 

$(eval $(call BSV_V_RULE, $(MemServerRequest_MOD), $(MemServerRequest_V), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

MemServerRequest_MOD = mkMemServerRequestOutputPipes
MemServerRequest_V   = verilog/mkMemServerRequestOutputPipes.v
MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 

$(eval $(call BSV_V_RULE, $(MemServerRequest_MOD), $(MemServerRequest_V), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

MemServerRequest_MOD = mkMemServerRequestOutput
MemServerRequest_V   = verilog/mkMemServerRequestOutput.v
MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 

$(eval $(call BSV_V_RULE, $(MemServerRequest_MOD), $(MemServerRequest_V), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

MemServerRequest_MOD = mkMemServerRequestInverter
MemServerRequest_V   = verilog/mkMemServerRequestInverter.v
MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 

$(eval $(call BSV_V_RULE, $(MemServerRequest_MOD), $(MemServerRequest_V), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

MemServerRequest_MOD = mkMemServerRequestInverterV
MemServerRequest_V   = verilog/mkMemServerRequestInverterV.v
MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 

$(eval $(call BSV_V_RULE, $(MemServerRequest_MOD), $(MemServerRequest_V), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

MemServerRequest_MOD = mkMemServerRequestProxySynth
MemServerRequest_V   = verilog/mkMemServerRequestProxySynth.v
MemServerRequest_BO  = obj/MemServerRequest.bo
MemServerRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerRequest.bsv
MemServerRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerRequest_INC = 

$(eval $(call BSV_V_RULE, $(MemServerRequest_MOD), $(MemServerRequest_V), $(MemServerRequest_BSV), $(MemServerRequest_DEP), $(MemServerRequest_INC)))

XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv

$(eval $(call BSV_BO_RULE, $(XsimMsgRequest_BO), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

XsimMsgRequest_MOD = mkXsimMsgRequestInput
XsimMsgRequest_V   = verilog/mkXsimMsgRequestInput.v
XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgRequest_MOD), $(XsimMsgRequest_V), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

XsimMsgRequest_MOD = mkXsimMsgRequestWrapperMemPortalPipes
XsimMsgRequest_V   = verilog/mkXsimMsgRequestWrapperMemPortalPipes.v
XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgRequest_MOD), $(XsimMsgRequest_V), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

XsimMsgRequest_MOD = mkXsimMsgRequestOutputPipes
XsimMsgRequest_V   = verilog/mkXsimMsgRequestOutputPipes.v
XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgRequest_MOD), $(XsimMsgRequest_V), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

XsimMsgRequest_MOD = mkXsimMsgRequestOutput
XsimMsgRequest_V   = verilog/mkXsimMsgRequestOutput.v
XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgRequest_MOD), $(XsimMsgRequest_V), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

XsimMsgRequest_MOD = mkXsimMsgRequestInverter
XsimMsgRequest_V   = verilog/mkXsimMsgRequestInverter.v
XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgRequest_MOD), $(XsimMsgRequest_V), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

XsimMsgRequest_MOD = mkXsimMsgRequestInverterV
XsimMsgRequest_V   = verilog/mkXsimMsgRequestInverterV.v
XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgRequest_MOD), $(XsimMsgRequest_V), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

XsimMsgRequest_MOD = mkXsimMsgRequestProxySynth
XsimMsgRequest_V   = verilog/mkXsimMsgRequestProxySynth.v
XsimMsgRequest_BO  = obj/XsimMsgRequest.bo
XsimMsgRequest_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/XsimMsgRequest.bsv
XsimMsgRequest_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/XsimIF.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
XsimMsgRequest_INC = 

$(eval $(call BSV_V_RULE, $(XsimMsgRequest_MOD), $(XsimMsgRequest_V), $(XsimMsgRequest_BSV), $(XsimMsgRequest_DEP), $(XsimMsgRequest_INC)))

Top_BO  = obj/Top.bo
Top_DEP = obj/ConnectalConfig.bo obj/Portal.bo obj/CnocPortal.bo obj/HostInterface.bo obj/MemTypes.bo obj/IfcNames.bo obj/MainIndication.bo obj/Main.bo obj/MemServerIndication.bo obj/MainRequest.bo
Top_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Top_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/Top.bsv

$(eval $(call BSV_BO_RULE, $(Top_BO), $(Top_BSV), $(Top_DEP), $(Top_INC)))

MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv

$(eval $(call BSV_BO_RULE, $(MemServerIndication_BO), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

MemServerIndication_MOD = mkMemServerIndicationInput
MemServerIndication_V   = verilog/mkMemServerIndicationInput.v
MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 

$(eval $(call BSV_V_RULE, $(MemServerIndication_MOD), $(MemServerIndication_V), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

MemServerIndication_MOD = mkMemServerIndicationWrapperMemPortalPipes
MemServerIndication_V   = verilog/mkMemServerIndicationWrapperMemPortalPipes.v
MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 

$(eval $(call BSV_V_RULE, $(MemServerIndication_MOD), $(MemServerIndication_V), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

MemServerIndication_MOD = mkMemServerIndicationOutputPipes
MemServerIndication_V   = verilog/mkMemServerIndicationOutputPipes.v
MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 

$(eval $(call BSV_V_RULE, $(MemServerIndication_MOD), $(MemServerIndication_V), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

MemServerIndication_MOD = mkMemServerIndicationOutput
MemServerIndication_V   = verilog/mkMemServerIndicationOutput.v
MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 

$(eval $(call BSV_V_RULE, $(MemServerIndication_MOD), $(MemServerIndication_V), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

MemServerIndication_MOD = mkMemServerIndicationInverter
MemServerIndication_V   = verilog/mkMemServerIndicationInverter.v
MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 

$(eval $(call BSV_V_RULE, $(MemServerIndication_MOD), $(MemServerIndication_V), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

MemServerIndication_MOD = mkMemServerIndicationInverterV
MemServerIndication_V   = verilog/mkMemServerIndicationInverterV.v
MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 

$(eval $(call BSV_V_RULE, $(MemServerIndication_MOD), $(MemServerIndication_V), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

MemServerIndication_MOD = mkMemServerIndicationProxySynth
MemServerIndication_V   = verilog/mkMemServerIndicationProxySynth.v
MemServerIndication_BO  = obj/MemServerIndication.bo
MemServerIndication_BSV = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/MemServerIndication.bsv
MemServerIndication_DEP = obj/Adapter.bo obj/Leds.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/Portal.bo obj/CtrlMux.bo obj/MemTypes.bo obj/Pipe.bo obj/HostInterface.bo obj/LinkerLib.bo obj/MainAPI.bo obj/DbgDefs.bo obj/Sims.bo obj/PktGenChannel.bo obj/PktCapChannel.bo obj/TxChannel.bo obj/RxChannel.bo obj/HostChannel.bo obj/StreamChannel.bo obj/MetaGenChannel.bo obj/PktGen.bo obj/Board.bo obj/Runtime.bo obj/Program.bo obj/Channel.bo obj/Stream.bo obj/StructDefines.bo obj/ConnectalTypes.bo obj/Control.bo obj/Ethernet.bo obj/PacketBuffer.bo
MemServerIndication_INC = 

$(eval $(call BSV_V_RULE, $(MemServerIndication_MOD), $(MemServerIndication_V), $(MemServerIndication_BSV), $(MemServerIndication_DEP), $(MemServerIndication_INC)))

Parser_BO  = obj/Parser.bo
Parser_DEP = obj/Library.bo
Parser_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv
Parser_BSV = /home/yhs/p4fpga/bsv/datapath/Parser.bsv

$(eval $(call BSV_BO_RULE, $(Parser_BO), $(Parser_BSV), $(Parser_DEP), $(Parser_INC)))

Parser_MOD = mkParser
Parser_V   = verilog/mkParser.v
Parser_BO  = obj/Parser.bo
Parser_BSV = /home/yhs/p4fpga/bsv/datapath/Parser.bsv
Parser_DEP = obj/Library.bo
Parser_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ParserGenerated.bsv

$(eval $(call BSV_V_RULE, $(Parser_MOD), $(Parser_V), $(Parser_BSV), $(Parser_DEP), $(Parser_INC)))

UnionDefines_BO  = obj/UnionDefines.bo
UnionDefines_DEP = obj/Ethernet.bo obj/StructDefines.bo
UnionDefines_INC = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/UnionGenerated.bsv
UnionDefines_BSV = /home/yhs/p4fpga/bsv/datapath/UnionDefines.bsv

$(eval $(call BSV_BO_RULE, $(UnionDefines_BO), $(UnionDefines_BSV), $(UnionDefines_DEP), $(UnionDefines_INC)))

Control_BO  = obj/Control.bo
Control_DEP = obj/Library.bo obj/StructDefines.bo obj/UnionDefines.bo obj/ConnectalTypes.bo obj/Table.bo obj/Engine.bo obj/Pipe.bo obj/Lists.bo obj/SynthBuilder.bo
Control_INC = /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ControlGenerated.bsv /home/yhs/p4fpga/bsv/library/TieOff.defines /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/SynthBuilder.defines /home/yhs/p4fpga/bsv/library/MatchTable.defines
Control_BSV = /home/yhs/p4fpga/bsv/datapath/Control.bsv

$(eval $(call BSV_BO_RULE, $(Control_BO), $(Control_BSV), $(Control_DEP), $(Control_INC)))

Engine_BO  = obj/Engine.bo
Engine_DEP = obj/Ethernet.bo obj/Pipe.bo obj/TxRx.bo obj/Utils.bo
Engine_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines
Engine_BSV = /home/yhs/p4fpga/bsv/datapath/Engine.bsv

$(eval $(call BSV_BO_RULE, $(Engine_BO), $(Engine_BSV), $(Engine_DEP), $(Engine_INC)))

Program_BO  = obj/Program.bo
Program_DEP = obj/Library.bo obj/ConnectalTypes.bo obj/Control.bo obj/SynthBuilder.bo
Program_INC = /home/yhs/p4fpga/bsv/library/SynthBuilder.defines /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/TieOff.defines /home/yhs/clickp4_fpga/02-rewind/generatedbsv/APIDefGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/ProgDeclGenerated.bsv
Program_BSV = /home/yhs/p4fpga/bsv/datapath/Program.bsv

$(eval $(call BSV_BO_RULE, $(Program_BO), $(Program_BSV), $(Program_DEP), $(Program_INC)))

Deparser_BO  = obj/Deparser.bo
Deparser_DEP = obj/Library.bo
Deparser_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/clickp4_fpga/02-rewind/generatedbsv/DeparserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/DeparserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/DeparserGenerated.bsv
Deparser_BSV = /home/yhs/p4fpga/bsv/datapath/Deparser.bsv

$(eval $(call BSV_BO_RULE, $(Deparser_BO), $(Deparser_BSV), $(Deparser_DEP), $(Deparser_INC)))

Deparser_MOD = mkDeparser
Deparser_V   = verilog/mkDeparser.v
Deparser_BO  = obj/Deparser.bo
Deparser_BSV = /home/yhs/p4fpga/bsv/datapath/Deparser.bsv
Deparser_DEP = obj/Library.bo
Deparser_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/clickp4_fpga/02-rewind/generatedbsv/DeparserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/DeparserGenerated.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/DeparserGenerated.bsv

$(eval $(call BSV_V_RULE, $(Deparser_MOD), $(Deparser_V), $(Deparser_BSV), $(Deparser_DEP), $(Deparser_INC)))

StructDefines_BO  = obj/StructDefines.bo
StructDefines_DEP = obj/Ethernet.bo obj/Utils.bo
StructDefines_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/clickp4_fpga/02-rewind/generatedbsv/StructGenerated.bsv
StructDefines_BSV = /home/yhs/p4fpga/bsv/datapath/StructDefines.bsv

$(eval $(call BSV_BO_RULE, $(StructDefines_BO), $(StructDefines_BSV), $(StructDefines_DEP), $(StructDefines_INC)))

Table_BO  = obj/Table.bo
Table_DEP = obj/Ethernet.bo obj/MatchTable.bo obj/PacketBuffer.bo obj/Pipe.bo obj/PrintTrace.bo obj/Register.bo obj/SharedBuff.bo obj/TxRx.bo obj/Utils.bo obj/StructDefines.bo obj/UnionDefines.bo obj/ConnectalTypes.bo obj/SynthBuilder.bo
Table_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/SynthBuilder.defines
Table_BSV = /home/yhs/p4fpga/bsv/datapath/Table.bsv

$(eval $(call BSV_BO_RULE, $(Table_BO), $(Table_BSV), $(Table_DEP), $(Table_INC)))

XilinxMacWrap_BO  = obj/XilinxMacWrap.bo
XilinxMacWrap_DEP = obj/AxiBits.bo
XilinxMacWrap_INC = 
XilinxMacWrap_BSV = /home/yhs/p4fpga/bsv/generated/XilinxMacWrap.bsv

$(eval $(call BSV_BO_RULE, $(XilinxMacWrap_BO), $(XilinxMacWrap_BSV), $(XilinxMacWrap_DEP), $(XilinxMacWrap_INC)))

XilinxEthWrap_BO  = obj/XilinxEthWrap.bo
XilinxEthWrap_DEP = obj/AxiBits.bo
XilinxEthWrap_INC = 
XilinxEthWrap_BSV = /home/yhs/p4fpga/bsv/generated/XilinxEthWrap.bsv

$(eval $(call BSV_BO_RULE, $(XilinxEthWrap_BO), $(XilinxEthWrap_BSV), $(XilinxEthWrap_DEP), $(XilinxEthWrap_INC)))

XilinxPhyWrap_BO  = obj/XilinxPhyWrap.bo
XilinxPhyWrap_DEP = obj/AxiBits.bo
XilinxPhyWrap_INC = 
XilinxPhyWrap_BSV = /home/yhs/p4fpga/bsv/generated/XilinxPhyWrap.bsv

$(eval $(call BSV_BO_RULE, $(XilinxPhyWrap_BO), $(XilinxPhyWrap_BSV), $(XilinxPhyWrap_DEP), $(XilinxPhyWrap_INC)))

PacketModifier_BO  = obj/PacketModifier.bo
PacketModifier_DEP = obj/Library.bo obj/Channel.bo obj/StoreAndForward.bo obj/StreamGearbox.bo obj/SharedBuff.bo obj/HeaderSerializer.bo obj/PrintTrace.bo obj/Parser.bo obj/Deparser.bo obj/StructDefines.bo
PacketModifier_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines
PacketModifier_BSV = /home/yhs/p4fpga/bsv/library/PacketModifier.bsv

$(eval $(call BSV_BO_RULE, $(PacketModifier_BO), $(PacketModifier_BSV), $(PacketModifier_DEP), $(PacketModifier_INC)))

PacketModifier_MOD = mkPacketModifier
PacketModifier_V   = verilog/mkPacketModifier.v
PacketModifier_BO  = obj/PacketModifier.bo
PacketModifier_BSV = /home/yhs/p4fpga/bsv/library/PacketModifier.bsv
PacketModifier_DEP = obj/Library.bo obj/Channel.bo obj/StoreAndForward.bo obj/StreamGearbox.bo obj/SharedBuff.bo obj/HeaderSerializer.bo obj/PrintTrace.bo obj/Parser.bo obj/Deparser.bo obj/StructDefines.bo
PacketModifier_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines

$(eval $(call BSV_V_RULE, $(PacketModifier_MOD), $(PacketModifier_V), $(PacketModifier_BSV), $(PacketModifier_DEP), $(PacketModifier_INC)))

StreamChannel_BO  = obj/StreamChannel.bo
StreamChannel_DEP = obj/Library.bo obj/Channel.bo obj/StoreAndForward.bo obj/StreamGearbox.bo obj/SharedBuff.bo obj/HeaderSerializer.bo obj/PrintTrace.bo obj/PacketModifier.bo obj/Parser.bo obj/Deparser.bo obj/StructDefines.bo
StreamChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines
StreamChannel_BSV = /home/yhs/p4fpga/bsv/library/StreamChannel.bsv

$(eval $(call BSV_BO_RULE, $(StreamChannel_BO), $(StreamChannel_BSV), $(StreamChannel_DEP), $(StreamChannel_INC)))

PktGen_BO  = obj/PktGen.bo
PktGen_DEP = obj/Pipe.bo obj/Ethernet.bo obj/Stream.bo obj/PacketBuffer.bo
PktGen_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines
PktGen_BSV = /home/yhs/p4fpga/bsv/library/PktGen.bsv

$(eval $(call BSV_BO_RULE, $(PktGen_BO), $(PktGen_BSV), $(PktGen_DEP), $(PktGen_INC)))

Lists_BO  = obj/Lists.bo
Lists_DEP = 
Lists_INC = 
Lists_BSV = /home/yhs/p4fpga/bsv/library/Lists.bsv

$(eval $(call BSV_BO_RULE, $(Lists_BO), $(Lists_BSV), $(Lists_DEP), $(Lists_INC)))

Stream_BO  = obj/Stream.bo
Stream_DEP = 
Stream_INC = /home/yhs/p4fpga/bsv/library/TieOff.defines
Stream_BSV = /home/yhs/p4fpga/bsv/library/Stream.bsv

$(eval $(call BSV_BO_RULE, $(Stream_BO), $(Stream_BSV), $(Stream_DEP), $(Stream_INC)))

MetaGenChannel_BO  = obj/MetaGenChannel.bo
MetaGenChannel_DEP = obj/StreamChannel.bo obj/StructDefines.bo obj/Stream.bo obj/PacketBuffer.bo obj/Pipe.bo
MetaGenChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/TieOff.defines
MetaGenChannel_BSV = /home/yhs/p4fpga/bsv/library/MetaGenChannel.bsv

$(eval $(call BSV_BO_RULE, $(MetaGenChannel_BO), $(MetaGenChannel_BSV), $(MetaGenChannel_DEP), $(MetaGenChannel_INC)))

MetaGenChannel_MOD = mkMetaGenChannel
MetaGenChannel_V   = verilog/mkMetaGenChannel.v
MetaGenChannel_BO  = obj/MetaGenChannel.bo
MetaGenChannel_BSV = /home/yhs/p4fpga/bsv/library/MetaGenChannel.bsv
MetaGenChannel_DEP = obj/StreamChannel.bo obj/StructDefines.bo obj/Stream.bo obj/PacketBuffer.bo obj/Pipe.bo
MetaGenChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/TieOff.defines

$(eval $(call BSV_V_RULE, $(MetaGenChannel_MOD), $(MetaGenChannel_V), $(MetaGenChannel_BSV), $(MetaGenChannel_DEP), $(MetaGenChannel_INC)))

XBar_BO  = obj/XBar.bo
XBar_DEP = obj/Stream.bo obj/PrintTrace.bo obj/SynthBuilder.bo
XBar_INC = /home/yhs/p4fpga/bsv/library/SynthBuilder.defines
XBar_BSV = /home/yhs/p4fpga/bsv/library/XBar.bsv

$(eval $(call BSV_BO_RULE, $(XBar_BO), $(XBar_BSV), $(XBar_DEP), $(XBar_INC)))

DmaController_BO  = obj/DmaController.bo
DmaController_DEP = obj/ConnectalConfig.bo obj/Pipe.bo obj/MemTypes.bo obj/MemReadEngine.bo obj/MemWriteEngine.bo obj/HostInterface.bo
DmaController_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
DmaController_BSV = /home/yhs/p4fpga/bsv/library/DmaController.bsv

$(eval $(call BSV_BO_RULE, $(DmaController_BO), $(DmaController_BSV), $(DmaController_DEP), $(DmaController_INC)))

Library_BO  = obj/Library.bo
Library_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/MatchTable.bo obj/PacketBuffer.bo obj/Pipe.bo obj/PrintTrace.bo obj/Register.bo obj/Stream.bo obj/TxRx.bo obj/Utils.bo obj/StructDefines.bo obj/UnionDefines.bo
Library_INC = 
Library_BSV = /home/yhs/p4fpga/bsv/library/Library.bsv

$(eval $(call BSV_BO_RULE, $(Library_BO), $(Library_BSV), $(Library_DEP), $(Library_INC)))

LedController_BO  = obj/LedController.bo
LedController_DEP = 
LedController_INC = 
LedController_BSV = /home/yhs/p4fpga/bsv/library/LedController.bsv

$(eval $(call BSV_BO_RULE, $(LedController_BO), $(LedController_BSV), $(LedController_DEP), $(LedController_INC)))

LedController_MOD = mkLedController
LedController_V   = verilog/mkLedController.v
LedController_BO  = obj/LedController.bo
LedController_BSV = /home/yhs/p4fpga/bsv/library/LedController.bsv
LedController_DEP = 
LedController_INC = 

$(eval $(call BSV_V_RULE, $(LedController_MOD), $(LedController_V), $(LedController_BSV), $(LedController_DEP), $(LedController_INC)))

Register_BO  = obj/Register.bo
Register_DEP = obj/Pipe.bo obj/ConnectalBram.bo
Register_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Register_BSV = /home/yhs/p4fpga/bsv/library/Register.bsv

$(eval $(call BSV_BO_RULE, $(Register_BO), $(Register_BSV), $(Register_DEP), $(Register_INC)))

ISA_Defs_BO  = obj/ISA_Defs.bo
ISA_Defs_DEP = 
ISA_Defs_INC = 
ISA_Defs_BSV = /home/yhs/p4fpga/bsv/library/ISA_Defs.bsv

$(eval $(call BSV_BO_RULE, $(ISA_Defs_BO), $(ISA_Defs_BSV), $(ISA_Defs_DEP), $(ISA_Defs_INC)))

SharedBuffMemServerInternal_BO  = obj/SharedBuffMemServerInternal.bo
SharedBuffMemServerInternal_DEP = obj/MemTypes.bo obj/ConnectalMemory.bo obj/ConnectalClocks.bo obj/SharedBuffMMU.bo obj/ConnectalCompletionBuffer.bo obj/ConnectalConfig.bo obj/Ethernet.bo
SharedBuffMemServerInternal_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuffMemServerInternal_BSV = /home/yhs/p4fpga/bsv/library/SharedBuffMemServerInternal.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuffMemServerInternal_BO), $(SharedBuffMemServerInternal_BSV), $(SharedBuffMemServerInternal_DEP), $(SharedBuffMemServerInternal_INC)))

SharedBuffMMU_BO  = obj/SharedBuffMMU.bo
SharedBuffMMU_DEP = obj/ConnectalBram.bo obj/MemTypes.bo obj/ConnectalMemory.bo obj/ConnectalCompletionBuffer.bo obj/Ethernet.bo obj/PrintTrace.bo
SharedBuffMMU_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuffMMU_BSV = /home/yhs/p4fpga/bsv/library/SharedBuffMMU.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuffMMU_BO), $(SharedBuffMMU_BSV), $(SharedBuffMMU_DEP), $(SharedBuffMMU_INC)))

HeaderSerializer_BO  = obj/HeaderSerializer.bo
HeaderSerializer_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/Pipe.bo obj/PacketBuffer.bo obj/PrintTrace.bo obj/StoreAndForward.bo obj/Stream.bo obj/SharedBuff.bo
HeaderSerializer_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines
HeaderSerializer_BSV = /home/yhs/p4fpga/bsv/library/HeaderSerializer.bsv

$(eval $(call BSV_BO_RULE, $(HeaderSerializer_BO), $(HeaderSerializer_BSV), $(HeaderSerializer_DEP), $(HeaderSerializer_INC)))

HeaderSerializer_MOD = mkHeaderSerializer
HeaderSerializer_V   = verilog/mkHeaderSerializer.v
HeaderSerializer_BO  = obj/HeaderSerializer.bo
HeaderSerializer_BSV = /home/yhs/p4fpga/bsv/library/HeaderSerializer.bsv
HeaderSerializer_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/Pipe.bo obj/PacketBuffer.bo obj/PrintTrace.bo obj/StoreAndForward.bo obj/Stream.bo obj/SharedBuff.bo
HeaderSerializer_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines

$(eval $(call BSV_V_RULE, $(HeaderSerializer_MOD), $(HeaderSerializer_V), $(HeaderSerializer_BSV), $(HeaderSerializer_DEP), $(HeaderSerializer_INC)))

Sims_BO  = obj/Sims.bo
Sims_DEP = 
Sims_INC = 
Sims_BSV = /home/yhs/p4fpga/bsv/library/Sims.bsv

$(eval $(call BSV_BO_RULE, $(Sims_BO), $(Sims_BSV), $(Sims_DEP), $(Sims_INC)))

PriorityEncoder_BO  = obj/PriorityEncoder.bo
PriorityEncoder_DEP = obj/Arith.bo
PriorityEncoder_INC = 
PriorityEncoder_BSV = /home/yhs/p4fpga/bsv/library/PriorityEncoder.bsv

$(eval $(call BSV_BO_RULE, $(PriorityEncoder_BO), $(PriorityEncoder_BSV), $(PriorityEncoder_DEP), $(PriorityEncoder_INC)))

Tap_BO  = obj/Tap.bo
Tap_DEP = obj/Pipe.bo obj/Stream.bo obj/PacketBuffer.bo obj/Ethernet.bo
Tap_INC = 
Tap_BSV = /home/yhs/p4fpga/bsv/library/Tap.bsv

$(eval $(call BSV_BO_RULE, $(Tap_BO), $(Tap_BSV), $(Tap_DEP), $(Tap_INC)))

SharedBuffMemServer_BO  = obj/SharedBuffMemServer.bo
SharedBuffMemServer_DEP = obj/HostInterface.bo obj/MemTypes.bo obj/ConnectalConfig.bo obj/ConnectalMemory.bo obj/SharedBuffMMU.bo obj/SharedBuffMemServerInternal.bo
SharedBuffMemServer_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuffMemServer_BSV = /home/yhs/p4fpga/bsv/library/SharedBuffMemServer.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuffMemServer_BO), $(SharedBuffMemServer_BSV), $(SharedBuffMemServer_DEP), $(SharedBuffMemServer_INC)))

DbgTypes_BO  = obj/DbgTypes.bo
DbgTypes_DEP = 
DbgTypes_INC = 
DbgTypes_BSV = /home/yhs/p4fpga/bsv/library/DbgTypes.bsv

$(eval $(call BSV_BO_RULE, $(DbgTypes_BO), $(DbgTypes_BSV), $(DbgTypes_DEP), $(DbgTypes_INC)))

CPU_Common_BO  = obj/CPU_Common.bo
CPU_Common_DEP = 
CPU_Common_INC = 
CPU_Common_BSV = /home/yhs/p4fpga/bsv/library/CPU_Common.bsv

$(eval $(call BSV_BO_RULE, $(CPU_Common_BO), $(CPU_Common_BSV), $(CPU_Common_DEP), $(CPU_Common_INC)))

StringUtils_BO  = obj/StringUtils.bo
StringUtils_DEP = 
StringUtils_INC = 
StringUtils_BSV = /home/yhs/p4fpga/bsv/library/StringUtils.bsv

$(eval $(call BSV_BO_RULE, $(StringUtils_BO), $(StringUtils_BSV), $(StringUtils_DEP), $(StringUtils_INC)))

MemMgmt_BO  = obj/MemMgmt.bo
MemMgmt_DEP = obj/ConfigCounter.bo obj/Pipe.bo obj/ConnectalBram.bo obj/ConnectalMemory.bo obj/Ethernet.bo obj/SharedBuffMMU.bo obj/DbgDefs.bo
MemMgmt_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MemMgmt_BSV = /home/yhs/p4fpga/bsv/library/MemMgmt.bsv

$(eval $(call BSV_BO_RULE, $(MemMgmt_BO), $(MemMgmt_BSV), $(MemMgmt_DEP), $(MemMgmt_INC)))

MatchTable_BO  = obj/MatchTable.bo
MatchTable_DEP = obj/Bcam.bo obj/BcamTypes.bo obj/DMHC.bo obj/Pipe.bo obj/PrintTrace.bo obj/StringUtils.bo obj/SynthBuilder.bo
MatchTable_INC = /home/yhs/p4fpga/bsv/library/SynthBuilder.defines /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
MatchTable_BSV = /home/yhs/p4fpga/bsv/library/MatchTable.bsv

$(eval $(call BSV_BO_RULE, $(MatchTable_BO), $(MatchTable_BSV), $(MatchTable_DEP), $(MatchTable_INC)))

DbgDefs_BO  = obj/DbgDefs.bo
DbgDefs_DEP = 
DbgDefs_INC = 
DbgDefs_BSV = /home/yhs/p4fpga/bsv/library/DbgDefs.bsv

$(eval $(call BSV_BO_RULE, $(DbgDefs_BO), $(DbgDefs_BSV), $(DbgDefs_DEP), $(DbgDefs_INC)))

MFIFO_BO  = obj/MFIFO.bo
MFIFO_DEP = 
MFIFO_INC = 
MFIFO_BSV = /home/yhs/p4fpga/bsv/library/MFIFO.bsv

$(eval $(call BSV_BO_RULE, $(MFIFO_BO), $(MFIFO_BSV), $(MFIFO_DEP), $(MFIFO_INC)))

Ddr3Controller_BO  = obj/Ddr3Controller.bo
Ddr3Controller_DEP = obj/AxiDdr3Wrapper.bo obj/AxiBits.bo obj/Axi4MasterSlave.bo obj/ConnectalClocks.bo
Ddr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Ddr3Controller_BSV = /home/yhs/p4fpga/bsv/library/Ddr3Controller.bsv

$(eval $(call BSV_BO_RULE, $(Ddr3Controller_BO), $(Ddr3Controller_BSV), $(Ddr3Controller_DEP), $(Ddr3Controller_INC)))

Ddr3Controller_MOD = mkDdr3
Ddr3Controller_V   = verilog/mkDdr3.v
Ddr3Controller_BO  = obj/Ddr3Controller.bo
Ddr3Controller_BSV = /home/yhs/p4fpga/bsv/library/Ddr3Controller.bsv
Ddr3Controller_DEP = obj/AxiDdr3Wrapper.bo obj/AxiBits.bo obj/Axi4MasterSlave.bo obj/ConnectalClocks.bo
Ddr3Controller_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(Ddr3Controller_MOD), $(Ddr3Controller_V), $(Ddr3Controller_BSV), $(Ddr3Controller_DEP), $(Ddr3Controller_INC)))

XilinxEthPhy_BO  = obj/XilinxEthPhy.bo
XilinxEthPhy_DEP = obj/Pipe.bo obj/XilinxPhyWrap.bo
XilinxEthPhy_INC = 
XilinxEthPhy_BSV = /home/yhs/p4fpga/bsv/library/XilinxEthPhy.bsv

$(eval $(call BSV_BO_RULE, $(XilinxEthPhy_BO), $(XilinxEthPhy_BSV), $(XilinxEthPhy_DEP), $(XilinxEthPhy_INC)))

Ethernet_BO  = obj/Ethernet.bo
Ethernet_DEP = obj/Pipe.bo obj/Stream.bo
Ethernet_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Ethernet_BSV = /home/yhs/p4fpga/bsv/library/Ethernet.bsv

$(eval $(call BSV_BO_RULE, $(Ethernet_BO), $(Ethernet_BSV), $(Ethernet_DEP), $(Ethernet_INC)))

StreamGearbox_BO  = obj/StreamGearbox.bo
StreamGearbox_DEP = obj/Stream.bo obj/SynthBuilder.bo obj/PrintTrace.bo
StreamGearbox_INC = /home/yhs/p4fpga/bsv/library/SynthBuilder.defines
StreamGearbox_BSV = /home/yhs/p4fpga/bsv/library/StreamGearbox.bsv

$(eval $(call BSV_BO_RULE, $(StreamGearbox_BO), $(StreamGearbox_BSV), $(StreamGearbox_DEP), $(StreamGearbox_INC)))

IMem_BO  = obj/IMem.bo
IMem_DEP = obj/CPU_Common.bo obj/StringUtils.bo
IMem_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
IMem_BSV = /home/yhs/p4fpga/bsv/library/IMem.bsv

$(eval $(call BSV_BO_RULE, $(IMem_BO), $(IMem_BSV), $(IMem_DEP), $(IMem_INC)))

SharedMemoryChannel_BO  = obj/SharedMemoryChannel.bo
SharedMemoryChannel_DEP = 
SharedMemoryChannel_INC = 
SharedMemoryChannel_BSV = /home/yhs/p4fpga/bsv/library/SharedMemoryChannel.bsv

$(eval $(call BSV_BO_RULE, $(SharedMemoryChannel_BO), $(SharedMemoryChannel_BSV), $(SharedMemoryChannel_DEP), $(SharedMemoryChannel_INC)))

TxChannel_BO  = obj/TxChannel.bo
TxChannel_DEP = obj/Library.bo obj/Channel.bo obj/MemMgmt.bo obj/MemTypes.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/HeaderSerializer.bo obj/Deparser.bo obj/StructDefines.bo
TxChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines
TxChannel_BSV = /home/yhs/p4fpga/bsv/library/TxChannel.bsv

$(eval $(call BSV_BO_RULE, $(TxChannel_BO), $(TxChannel_BSV), $(TxChannel_DEP), $(TxChannel_INC)))

StoreAndForward_BO  = obj/StoreAndForward.bo
StoreAndForward_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemTypes.bo obj/MemServer.bo obj/MemServerInternal.bo obj/MemMgmt.bo obj/PacketBuffer.bo obj/SharedBuff.bo obj/SharedBuffMMU.bo obj/Stream.bo obj/StreamGearbox.bo obj/Pipe.bo obj/PrintTrace.bo obj/ConnectalConfig.bo
StoreAndForward_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
StoreAndForward_BSV = /home/yhs/p4fpga/bsv/library/StoreAndForward.bsv

$(eval $(call BSV_BO_RULE, $(StoreAndForward_BO), $(StoreAndForward_BSV), $(StoreAndForward_DEP), $(StoreAndForward_INC)))

PushButtonController_BO  = obj/PushButtonController.bo
PushButtonController_DEP = 
PushButtonController_INC = 
PushButtonController_BSV = /home/yhs/p4fpga/bsv/library/PushButtonController.bsv

$(eval $(call BSV_BO_RULE, $(PushButtonController_BO), $(PushButtonController_BSV), $(PushButtonController_DEP), $(PushButtonController_INC)))

PushButtonController_MOD = mkPushButtonController
PushButtonController_V   = verilog/mkPushButtonController.v
PushButtonController_BO  = obj/PushButtonController.bo
PushButtonController_BSV = /home/yhs/p4fpga/bsv/library/PushButtonController.bsv
PushButtonController_DEP = 
PushButtonController_INC = 

$(eval $(call BSV_V_RULE, $(PushButtonController_MOD), $(PushButtonController_V), $(PushButtonController_BSV), $(PushButtonController_DEP), $(PushButtonController_INC)))

PacketBuffer_BO  = obj/PacketBuffer.bo
PacketBuffer_DEP = obj/Channel.bo obj/DbgDefs.bo obj/Ethernet.bo obj/Pipe.bo obj/PrintTrace.bo obj/Stream.bo obj/SynthBuilder.bo
PacketBuffer_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv /home/yhs/p4fpga/bsv/datapath/Debug.defines /home/yhs/p4fpga/bsv/library/SynthBuilder.defines
PacketBuffer_BSV = /home/yhs/p4fpga/bsv/library/PacketBuffer.bsv

$(eval $(call BSV_BO_RULE, $(PacketBuffer_BO), $(PacketBuffer_BSV), $(PacketBuffer_DEP), $(PacketBuffer_INC)))

Channel_BO  = obj/Channel.bo
Channel_DEP = obj/Stream.bo obj/Pipe.bo obj/StructDefines.bo
Channel_INC = 
Channel_BSV = /home/yhs/p4fpga/bsv/library/Channel.bsv

$(eval $(call BSV_BO_RULE, $(Channel_BO), $(Channel_BSV), $(Channel_DEP), $(Channel_INC)))

CPU_BO  = obj/CPU.bo
CPU_DEP = obj/Ethernet.bo obj/Pipe.bo obj/TxRx.bo obj/Utils.bo obj/ISA_Defs.bo obj/CPU_Common.bo
CPU_INC = 
CPU_BSV = /home/yhs/p4fpga/bsv/library/CPU.bsv

$(eval $(call BSV_BO_RULE, $(CPU_BO), $(CPU_BSV), $(CPU_DEP), $(CPU_INC)))

PktCapChannel_BO  = obj/PktCapChannel.bo
PktCapChannel_DEP = obj/Channel.bo obj/DbgDefs.bo obj/DbgTypes.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/Pipe.bo obj/PacketBuffer.bo obj/PktGen.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/Stream.bo obj/Deparser.bo
PktCapChannel_INC = 
PktCapChannel_BSV = /home/yhs/p4fpga/bsv/library/PktCapChannel.bsv

$(eval $(call BSV_BO_RULE, $(PktCapChannel_BO), $(PktCapChannel_BSV), $(PktCapChannel_DEP), $(PktCapChannel_INC)))

EthMac_BO  = obj/EthMac.bo
EthMac_DEP = obj/Pipe.bo obj/Stream.bo obj/Ethernet.bo obj/Channel.bo
EthMac_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
EthMac_BSV = /home/yhs/p4fpga/bsv/library/EthMac.bsv

$(eval $(call BSV_BO_RULE, $(EthMac_BO), $(EthMac_BSV), $(EthMac_DEP), $(EthMac_INC)))

PrintTrace_BO  = obj/PrintTrace.bo
PrintTrace_DEP = 
PrintTrace_INC = 
PrintTrace_BSV = /home/yhs/p4fpga/bsv/library/PrintTrace.bsv

$(eval $(call BSV_BO_RULE, $(PrintTrace_BO), $(PrintTrace_BSV), $(PrintTrace_DEP), $(PrintTrace_INC)))

Utils_BO  = obj/Utils.bo
Utils_DEP = 
Utils_INC = 
Utils_BSV = /home/yhs/p4fpga/bsv/library/Utils.bsv

$(eval $(call BSV_BO_RULE, $(Utils_BO), $(Utils_BSV), $(Utils_DEP), $(Utils_INC)))

SynthBuilder_BO  = obj/SynthBuilder.bo
SynthBuilder_DEP = 
SynthBuilder_INC = 
SynthBuilder_BSV = /home/yhs/p4fpga/bsv/library/SynthBuilder.bsv

$(eval $(call BSV_BO_RULE, $(SynthBuilder_BO), $(SynthBuilder_BSV), $(SynthBuilder_DEP), $(SynthBuilder_INC)))

RxChannel_BO  = obj/RxChannel.bo
RxChannel_DEP = obj/DbgTypes.bo obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/PacketBuffer.bo obj/Pipe.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/Stream.bo obj/Tap.bo obj/HostChannel.bo obj/Parser.bo obj/StructDefines.bo
RxChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
RxChannel_BSV = /home/yhs/p4fpga/bsv/library/RxChannel.bsv

$(eval $(call BSV_BO_RULE, $(RxChannel_BO), $(RxChannel_BSV), $(RxChannel_DEP), $(RxChannel_INC)))

TxRx_BO  = obj/TxRx.bo
TxRx_DEP = obj/Pipe.bo
TxRx_INC = 
TxRx_BSV = /home/yhs/p4fpga/bsv/library/TxRx.bsv

$(eval $(call BSV_BO_RULE, $(TxRx_BO), $(TxRx_BSV), $(TxRx_DEP), $(TxRx_INC)))

PktGenChannel_BO  = obj/PktGenChannel.bo
PktGenChannel_DEP = obj/Channel.bo obj/DbgDefs.bo obj/Ethernet.bo obj/EthMac.bo obj/MemMgmt.bo obj/MemTypes.bo obj/Pipe.bo obj/PacketBuffer.bo obj/PktGen.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/Stream.bo obj/StreamGearbox.bo obj/Deparser.bo obj/SynthBuilder.bo
PktGenChannel_INC = /home/yhs/p4fpga/bsv/library/SynthBuilder.defines
PktGenChannel_BSV = /home/yhs/p4fpga/bsv/library/PktGenChannel.bsv

$(eval $(call BSV_BO_RULE, $(PktGenChannel_BO), $(PktGenChannel_BSV), $(PktGenChannel_DEP), $(PktGenChannel_INC)))

SharedBuff_BO  = obj/SharedBuff.bo
SharedBuff_DEP = obj/ConnectalBram.bo obj/ConnectalMemory.bo obj/MemTypes.bo obj/SharedBuffMemServer.bo obj/SharedBuffMemServerInternal.bo obj/SharedBuffMMU.bo obj/MemMgmt.bo obj/PhysMemSlaveFromBram.bo obj/Ethernet.bo obj/DbgDefs.bo obj/ConnectalConfig.bo
SharedBuff_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
SharedBuff_BSV = /home/yhs/p4fpga/bsv/library/SharedBuff.bsv

$(eval $(call BSV_BO_RULE, $(SharedBuff_BO), $(SharedBuff_BSV), $(SharedBuff_DEP), $(SharedBuff_INC)))

HostChannel_BO  = obj/HostChannel.bo
HostChannel_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/MemMgmt.bo obj/MemTypes.bo obj/PacketBuffer.bo obj/Pipe.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/Stream.bo obj/StreamGearbox.bo obj/Tap.bo obj/Parser.bo obj/StructDefines.bo
HostChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
HostChannel_BSV = /home/yhs/p4fpga/bsv/library/HostChannel.bsv

$(eval $(call BSV_BO_RULE, $(HostChannel_BO), $(HostChannel_BSV), $(HostChannel_DEP), $(HostChannel_INC)))

HostChannel_MOD = mkHostChannel
HostChannel_V   = verilog/mkHostChannel.v
HostChannel_BO  = obj/HostChannel.bo
HostChannel_BSV = /home/yhs/p4fpga/bsv/library/HostChannel.bsv
HostChannel_DEP = obj/DbgDefs.bo obj/Ethernet.bo obj/MemMgmt.bo obj/MemTypes.bo obj/PacketBuffer.bo obj/Pipe.bo obj/StoreAndForward.bo obj/SharedBuff.bo obj/Stream.bo obj/StreamGearbox.bo obj/Tap.bo obj/Parser.bo obj/StructDefines.bo
HostChannel_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(HostChannel_MOD), $(HostChannel_V), $(HostChannel_BSV), $(HostChannel_DEP), $(HostChannel_INC)))

NfsumePins_BO  = obj/NfsumePins.bo
NfsumePins_DEP = obj/LedController.bo obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo obj/XilinxEthPhy.bo
NfsumePins_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
NfsumePins_BSV = /home/yhs/p4fpga/bsv/library/NfsumePins.bsv

$(eval $(call BSV_BO_RULE, $(NfsumePins_BO), $(NfsumePins_BSV), $(NfsumePins_DEP), $(NfsumePins_INC)))

AsymmetricBRAM_BO  = obj/AsymmetricBRAM.bo
AsymmetricBRAM_DEP = obj/Pipe.bo obj/ConnectalConfig.bo
AsymmetricBRAM_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
AsymmetricBRAM_BSV = /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/AsymmetricBRAM.bsv

$(eval $(call BSV_BO_RULE, $(AsymmetricBRAM_BO), $(AsymmetricBRAM_BSV), $(AsymmetricBRAM_DEP), $(AsymmetricBRAM_INC)))

Tb1_BO  = obj/Tb1.bo
Tb1_DEP = obj/AsymmetricBRAM.bo
Tb1_INC = 
Tb1_BSV = /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/Tb1.bsv

$(eval $(call BSV_BO_RULE, $(Tb1_BO), $(Tb1_BSV), $(Tb1_DEP), $(Tb1_INC)))

Tb1_MOD = mkTb1
Tb1_V   = verilog/mkTb1.v
Tb1_BO  = obj/Tb1.bo
Tb1_BSV = /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/Tb1.bsv
Tb1_DEP = obj/AsymmetricBRAM.bo
Tb1_INC = 

$(eval $(call BSV_V_RULE, $(Tb1_MOD), $(Tb1_V), $(Tb1_BSV), $(Tb1_DEP), $(Tb1_INC)))

Tb3_BO  = obj/Tb3.bo
Tb3_DEP = obj/AsymmetricBRAM.bo
Tb3_INC = 
Tb3_BSV = /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/Tb3.bsv

$(eval $(call BSV_BO_RULE, $(Tb3_BO), $(Tb3_BSV), $(Tb3_DEP), $(Tb3_INC)))

Tb3_MOD = mkTb3
Tb3_V   = verilog/mkTb3.v
Tb3_BO  = obj/Tb3.bo
Tb3_BSV = /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/Tb3.bsv
Tb3_DEP = obj/AsymmetricBRAM.bo
Tb3_INC = 

$(eval $(call BSV_V_RULE, $(Tb3_MOD), $(Tb3_V), $(Tb3_BSV), $(Tb3_DEP), $(Tb3_INC)))

Tb2_BO  = obj/Tb2.bo
Tb2_DEP = obj/AsymmetricBRAM.bo obj/Pipe.bo
Tb2_INC = 
Tb2_BSV = /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/Tb2.bsv

$(eval $(call BSV_BO_RULE, $(Tb2_BO), $(Tb2_BSV), $(Tb2_DEP), $(Tb2_INC)))

Tb2_MOD = mkTb2
Tb2_V   = verilog/mkTb2.v
Tb2_BO  = obj/Tb2.bo
Tb2_BSV = /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/Tb2.bsv
Tb2_DEP = obj/AsymmetricBRAM.bo obj/Pipe.bo
Tb2_INC = 

$(eval $(call BSV_V_RULE, $(Tb2_MOD), $(Tb2_V), $(Tb2_BSV), $(Tb2_DEP), $(Tb2_INC)))

Ram9b_BO  = obj/Ram9b.bo
Ram9b_DEP = obj/Arith.bo obj/ConnectalBram.bo obj/Pipe.bo obj/AsymmetricBRAM.bo obj/BcamTypes.bo
Ram9b_INC = 
Ram9b_BSV = /home/yhs/p4fpga/bsv/library/Bcam/Ram9b.bsv

$(eval $(call BSV_BO_RULE, $(Ram9b_BO), $(Ram9b_BSV), $(Ram9b_DEP), $(Ram9b_INC)))

Tb_BO  = obj/Tb.bo
Tb_DEP = obj/Pipe.bo obj/PriorityEncoder.bo obj/Ram9b.bo obj/BcamTypes.bo obj/Bcam.bo
Tb_INC = 
Tb_BSV = /home/yhs/p4fpga/bsv/library/Bcam/Tb.bsv

$(eval $(call BSV_BO_RULE, $(Tb_BO), $(Tb_BSV), $(Tb_DEP), $(Tb_INC)))

Tb_MOD = mkTb
Tb_V   = verilog/mkTb.v
Tb_BO  = obj/Tb.bo
Tb_BSV = /home/yhs/p4fpga/bsv/library/Bcam/Tb.bsv
Tb_DEP = obj/Pipe.bo obj/PriorityEncoder.bo obj/Ram9b.bo obj/BcamTypes.bo obj/Bcam.bo
Tb_INC = 

$(eval $(call BSV_V_RULE, $(Tb_MOD), $(Tb_V), $(Tb_BSV), $(Tb_DEP), $(Tb_INC)))

Bcam_BO  = obj/Bcam.bo
Bcam_DEP = obj/Arith.bo obj/Pipe.bo obj/AsymmetricBRAM.bo obj/BcamTypes.bo obj/Ram9b.bo obj/PriorityEncoder.bo
Bcam_INC = 
Bcam_BSV = /home/yhs/p4fpga/bsv/library/Bcam/Bcam.bsv

$(eval $(call BSV_BO_RULE, $(Bcam_BO), $(Bcam_BSV), $(Bcam_DEP), $(Bcam_INC)))

Bcam_MOD = mkBinaryCamBSV
Bcam_V   = verilog/mkBinaryCamBSV.v
Bcam_BO  = obj/Bcam.bo
Bcam_BSV = /home/yhs/p4fpga/bsv/library/Bcam/Bcam.bsv
Bcam_DEP = obj/Arith.bo obj/Pipe.bo obj/AsymmetricBRAM.bo obj/BcamTypes.bo obj/Ram9b.bo obj/PriorityEncoder.bo
Bcam_INC = 

$(eval $(call BSV_V_RULE, $(Bcam_MOD), $(Bcam_V), $(Bcam_BSV), $(Bcam_DEP), $(Bcam_INC)))

BcamReg_BO  = obj/BcamReg.bo
BcamReg_DEP = obj/Arith.bo obj/Pipe.bo obj/BcamTypes.bo obj/PriorityEncoder.bo
BcamReg_INC = 
BcamReg_BSV = /home/yhs/p4fpga/bsv/library/Bcam/BcamReg.bsv

$(eval $(call BSV_BO_RULE, $(BcamReg_BO), $(BcamReg_BSV), $(BcamReg_DEP), $(BcamReg_INC)))

BcamTypes_BO  = obj/BcamTypes.bo
BcamTypes_DEP = 
BcamTypes_INC = 
BcamTypes_BSV = /home/yhs/p4fpga/bsv/library/Bcam/BcamTypes.bsv

$(eval $(call BSV_BO_RULE, $(BcamTypes_BO), $(BcamTypes_BSV), $(BcamTypes_DEP), $(BcamTypes_INC)))

Primes_BO  = obj/Primes.bo
Primes_DEP = 
Primes_INC = 
Primes_BSV = /home/yhs/p4fpga/bsv/library/DMHC/Primes.bsv

$(eval $(call BSV_BO_RULE, $(Primes_BO), $(Primes_BSV), $(Primes_DEP), $(Primes_INC)))

MissServiceFSM_BO  = obj/MissServiceFSM.bo
MissServiceFSM_DEP = 
MissServiceFSM_INC = 
MissServiceFSM_BSV = /home/yhs/p4fpga/bsv/library/DMHC/MissServiceFSM.bsv

$(eval $(call BSV_BO_RULE, $(MissServiceFSM_BO), $(MissServiceFSM_BSV), $(MissServiceFSM_DEP), $(MissServiceFSM_INC)))

HashUnit_BO  = obj/HashUnit.bo
HashUnit_DEP = 
HashUnit_INC = 
HashUnit_BSV = /home/yhs/p4fpga/bsv/library/DMHC/HashUnit.bsv

$(eval $(call BSV_BO_RULE, $(HashUnit_BO), $(HashUnit_BSV), $(HashUnit_DEP), $(HashUnit_INC)))

HashFns_BO  = obj/HashFns.bo
HashFns_DEP = 
HashFns_INC = 
HashFns_BSV = /home/yhs/p4fpga/bsv/library/DMHC/HashFns.bsv

$(eval $(call BSV_BO_RULE, $(HashFns_BO), $(HashFns_BSV), $(HashFns_DEP), $(HashFns_INC)))

BitManipulation_BO  = obj/BitManipulation.bo
BitManipulation_DEP = 
BitManipulation_INC = 
BitManipulation_BSV = /home/yhs/p4fpga/bsv/library/DMHC/BitManipulation.bsv

$(eval $(call BSV_BO_RULE, $(BitManipulation_BO), $(BitManipulation_BSV), $(BitManipulation_DEP), $(BitManipulation_INC)))

DMHC_BO  = obj/DMHC.bo
DMHC_DEP = obj/HashUnit.bo
DMHC_INC = /home/yhs/p4fpga/bsv/library/DMHC/BitManipulation.bsv /home/yhs/p4fpga/bsv/library/DMHC/HashFns.bsv /home/yhs/p4fpga/bsv/library/DMHC/Primes.bsv /home/yhs/p4fpga/bsv/library/DMHC/MissServiceFSM.bsv
DMHC_BSV = /home/yhs/p4fpga/bsv/library/DMHC/DMHC.bsv

$(eval $(call BSV_BO_RULE, $(DMHC_BO), $(DMHC_BSV), $(DMHC_DEP), $(DMHC_INC)))

ImageonVita_BO  = obj/ImageonVita.bo
ImageonVita_DEP = obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo
ImageonVita_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
ImageonVita_BSV = /home/yhs/connectal/lib/bsv/ImageonVita.bsv

$(eval $(call BSV_BO_RULE, $(ImageonVita_BO), $(ImageonVita_BSV), $(ImageonVita_DEP), $(ImageonVita_INC)))

ImageonVita_MOD = mkSerdesClock
ImageonVita_V   = verilog/mkSerdesClock.v
ImageonVita_BO  = obj/ImageonVita.bo
ImageonVita_BSV = /home/yhs/connectal/lib/bsv/ImageonVita.bsv
ImageonVita_DEP = obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo
ImageonVita_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(ImageonVita_MOD), $(ImageonVita_V), $(ImageonVita_BSV), $(ImageonVita_DEP), $(ImageonVita_INC)))

ImageonVita_MOD = mkImageClocks
ImageonVita_V   = verilog/mkImageClocks.v
ImageonVita_BO  = obj/ImageonVita.bo
ImageonVita_BSV = /home/yhs/connectal/lib/bsv/ImageonVita.bsv
ImageonVita_DEP = obj/ConnectalClocks.bo obj/ConnectalXilinxCells.bo
ImageonVita_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(ImageonVita_MOD), $(ImageonVita_V), $(ImageonVita_BSV), $(ImageonVita_DEP), $(ImageonVita_INC)))

BlueScopeEvent_BO  = obj/BlueScopeEvent.bo
BlueScopeEvent_DEP = obj/MemTypes.bo obj/MemWriteEngine.bo
BlueScopeEvent_INC = 
BlueScopeEvent_BSV = /home/yhs/connectal/lib/bsv/BlueScopeEvent.bsv

$(eval $(call BSV_BO_RULE, $(BlueScopeEvent_BO), $(BlueScopeEvent_BSV), $(BlueScopeEvent_DEP), $(BlueScopeEvent_INC)))

BlueScope_BO  = obj/BlueScope.bo
BlueScope_DEP = obj/MemTypes.bo obj/MemWriteEngine.bo
BlueScope_INC = 
BlueScope_BSV = /home/yhs/connectal/lib/bsv/BlueScope.bsv

$(eval $(call BSV_BO_RULE, $(BlueScope_BO), $(BlueScope_BSV), $(BlueScope_DEP), $(BlueScope_INC)))

HdmiDisplay_BO  = obj/HdmiDisplay.bo
HdmiDisplay_DEP = obj/MemTypes.bo obj/MemReadEngine.bo obj/HDMI.bo obj/XADC.bo obj/YUV.bo obj/BlueScope.bo
HdmiDisplay_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
HdmiDisplay_BSV = /home/yhs/connectal/lib/bsv/HdmiDisplay.bsv

$(eval $(call BSV_BO_RULE, $(HdmiDisplay_BO), $(HdmiDisplay_BSV), $(HdmiDisplay_DEP), $(HdmiDisplay_INC)))

Arith_BO  = obj/Arith.bo
Arith_DEP = 
Arith_INC = 
Arith_BSV = /home/yhs/connectal/lib/bsv/Arith.bsv

$(eval $(call BSV_BO_RULE, $(Arith_BO), $(Arith_BSV), $(Arith_DEP), $(Arith_INC)))

ConfigCounter_BO  = obj/ConfigCounter.bo
ConfigCounter_DEP = 
ConfigCounter_INC = 
ConfigCounter_BSV = /home/yhs/connectal/lib/bsv/ConfigCounter.bsv

$(eval $(call BSV_BO_RULE, $(ConfigCounter_BO), $(ConfigCounter_BSV), $(ConfigCounter_DEP), $(ConfigCounter_INC)))

Dma2BRAM_BO  = obj/Dma2BRAM.bo
Dma2BRAM_DEP = obj/MemTypes.bo obj/MemWriteEngine.bo obj/MemUtils.bo obj/Pipe.bo
Dma2BRAM_INC = 
Dma2BRAM_BSV = /home/yhs/connectal/lib/bsv/Dma2BRAM.bsv

$(eval $(call BSV_BO_RULE, $(Dma2BRAM_BO), $(Dma2BRAM_BSV), $(Dma2BRAM_DEP), $(Dma2BRAM_INC)))

ConnectalSpi_BO  = obj/ConnectalSpi.bo
ConnectalSpi_DEP = obj/SyncBits.bo obj/ConnectalClocks.bo
ConnectalSpi_INC = 
ConnectalSpi_BSV = /home/yhs/connectal/lib/bsv/ConnectalSpi.bsv

$(eval $(call BSV_BO_RULE, $(ConnectalSpi_BO), $(ConnectalSpi_BSV), $(ConnectalSpi_DEP), $(ConnectalSpi_INC)))

SharedMemoryFifo_BO  = obj/SharedMemoryFifo.bo
SharedMemoryFifo_DEP = obj/Pipe.bo obj/Portal.bo obj/MemTypes.bo obj/ConnectalMemory.bo
SharedMemoryFifo_INC = 
SharedMemoryFifo_BSV = /home/yhs/connectal/lib/bsv/SharedMemoryFifo.bsv

$(eval $(call BSV_BO_RULE, $(SharedMemoryFifo_BO), $(SharedMemoryFifo_BSV), $(SharedMemoryFifo_DEP), $(SharedMemoryFifo_INC)))

FrequencyCounter_BO  = obj/FrequencyCounter.bo
FrequencyCounter_DEP = 
FrequencyCounter_INC = 
FrequencyCounter_BSV = /home/yhs/connectal/lib/bsv/FrequencyCounter.bsv

$(eval $(call BSV_BO_RULE, $(FrequencyCounter_BO), $(FrequencyCounter_BSV), $(FrequencyCounter_DEP), $(FrequencyCounter_INC)))

IserdesDatadeserIF_BO  = obj/IserdesDatadeserIF.bo
IserdesDatadeserIF_DEP = 
IserdesDatadeserIF_INC = 
IserdesDatadeserIF_BSV = /home/yhs/connectal/lib/bsv/IserdesDatadeserIF.bsv

$(eval $(call BSV_BO_RULE, $(IserdesDatadeserIF_BO), $(IserdesDatadeserIF_BSV), $(IserdesDatadeserIF_DEP), $(IserdesDatadeserIF_INC)))

XADC_BO  = obj/XADC.bo
XADC_DEP = 
XADC_INC = 
XADC_BSV = /home/yhs/connectal/lib/bsv/XADC.bsv

$(eval $(call BSV_BO_RULE, $(XADC_BO), $(XADC_BSV), $(XADC_DEP), $(XADC_INC)))

BRAMFIFOFLevel_BO  = obj/BRAMFIFOFLevel.bo
BRAMFIFOFLevel_DEP = 
BRAMFIFOFLevel_INC = 
BRAMFIFOFLevel_BSV = /home/yhs/connectal/lib/bsv/BRAMFIFOFLevel.bsv

$(eval $(call BSV_BO_RULE, $(BRAMFIFOFLevel_BO), $(BRAMFIFOFLevel_BSV), $(BRAMFIFOFLevel_DEP), $(BRAMFIFOFLevel_INC)))

BlueScopeEventPIO_BO  = obj/BlueScopeEventPIO.bo
BlueScopeEventPIO_DEP = 
BlueScopeEventPIO_INC = 
BlueScopeEventPIO_BSV = /home/yhs/connectal/lib/bsv/BlueScopeEventPIO.bsv

$(eval $(call BSV_BO_RULE, $(BlueScopeEventPIO_BO), $(BlueScopeEventPIO_BSV), $(BlueScopeEventPIO_DEP), $(BlueScopeEventPIO_INC)))

SpiRoot_BO  = obj/SpiRoot.bo
SpiRoot_DEP = obj/SpiTap.bo
SpiRoot_INC = 
SpiRoot_BSV = /home/yhs/connectal/lib/bsv/SpiRoot.bsv

$(eval $(call BSV_BO_RULE, $(SpiRoot_BO), $(SpiRoot_BSV), $(SpiRoot_DEP), $(SpiRoot_INC)))

SharedMemoryPortal_BO  = obj/SharedMemoryPortal.bo
SharedMemoryPortal_DEP = obj/Pipe.bo obj/Portal.bo obj/MemTypes.bo obj/ConnectalMemory.bo obj/SharedMemoryFifo.bo
SharedMemoryPortal_INC = 
SharedMemoryPortal_BSV = /home/yhs/connectal/lib/bsv/SharedMemoryPortal.bsv

$(eval $(call BSV_BO_RULE, $(SharedMemoryPortal_BO), $(SharedMemoryPortal_BSV), $(SharedMemoryPortal_DEP), $(SharedMemoryPortal_INC)))

HDMI_BO  = obj/HDMI.bo
HDMI_DEP = obj/SyncBits.bo obj/YUV.bo obj/Arith.bo
HDMI_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
HDMI_BSV = /home/yhs/connectal/lib/bsv/HDMI.bsv

$(eval $(call BSV_BO_RULE, $(HDMI_BO), $(HDMI_BSV), $(HDMI_DEP), $(HDMI_INC)))

HDMI_MOD = mkRgb888ToYyuv
HDMI_V   = verilog/mkRgb888ToYyuv.v
HDMI_BO  = obj/HDMI.bo
HDMI_BSV = /home/yhs/connectal/lib/bsv/HDMI.bsv
HDMI_DEP = obj/SyncBits.bo obj/YUV.bo obj/Arith.bo
HDMI_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv

$(eval $(call BSV_V_RULE, $(HDMI_MOD), $(HDMI_V), $(HDMI_BSV), $(HDMI_DEP), $(HDMI_INC)))

SpiTap_BO  = obj/SpiTap.bo
SpiTap_DEP = 
SpiTap_INC = 
SpiTap_BSV = /home/yhs/connectal/lib/bsv/SpiTap.bsv

$(eval $(call BSV_BO_RULE, $(SpiTap_BO), $(SpiTap_BSV), $(SpiTap_DEP), $(SpiTap_INC)))

YUV_BO  = obj/YUV.bo
YUV_DEP = obj/Arith.bo
YUV_INC = 
YUV_BSV = /home/yhs/connectal/lib/bsv/YUV.bsv

$(eval $(call BSV_BO_RULE, $(YUV_BO), $(YUV_BSV), $(YUV_DEP), $(YUV_INC)))

Bscan_BO  = obj/Bscan.bo
Bscan_DEP = obj/BscanE2.bo obj/SyncBits.bo
Bscan_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Bscan_BSV = /home/yhs/connectal/lib/bsv/Bscan.bsv

$(eval $(call BSV_BO_RULE, $(Bscan_BO), $(Bscan_BSV), $(Bscan_DEP), $(Bscan_INC)))

IserdesDatadeser_BO  = obj/IserdesDatadeser.bo
IserdesDatadeser_DEP = obj/SyncBits.bo obj/ImageonVita.bo obj/IserdesDatadeserIF.bo
IserdesDatadeser_INC = 
IserdesDatadeser_BSV = /home/yhs/connectal/lib/bsv/IserdesDatadeser.bsv

$(eval $(call BSV_BO_RULE, $(IserdesDatadeser_BO), $(IserdesDatadeser_BSV), $(IserdesDatadeser_DEP), $(IserdesDatadeser_INC)))

StackReg_BO  = obj/StackReg.bo
StackReg_DEP = 
StackReg_INC = 
StackReg_BSV = /home/yhs/connectal/lib/bsv/StackReg.bsv

$(eval $(call BSV_BO_RULE, $(StackReg_BO), $(StackReg_BSV), $(StackReg_DEP), $(StackReg_INC)))

PipeMul_BO  = obj/PipeMul.bo
PipeMul_DEP = 
PipeMul_INC = 
PipeMul_BSV = /home/yhs/connectal/lib/bsv/PipeMul.bsv

$(eval $(call BSV_BO_RULE, $(PipeMul_BO), $(PipeMul_BSV), $(PipeMul_DEP), $(PipeMul_INC)))

Stack_BO  = obj/Stack.bo
Stack_DEP = 
Stack_INC = 
Stack_BSV = /home/yhs/connectal/lib/bsv/Stack.bsv

$(eval $(call BSV_BO_RULE, $(Stack_BO), $(Stack_BSV), $(Stack_DEP), $(Stack_INC)))

Leds_BO  = obj/Leds.bo
Leds_DEP = 
Leds_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
Leds_BSV = /home/yhs/connectal/lib/bsv/Leds.bsv

$(eval $(call BSV_BO_RULE, $(Leds_BO), $(Leds_BSV), $(Leds_DEP), $(Leds_INC)))

AxiDdr3Wrapper_BO  = obj/AxiDdr3Wrapper.bo
AxiDdr3Wrapper_DEP = obj/AxiBits.bo
AxiDdr3Wrapper_INC = 
AxiDdr3Wrapper_BSV = /home/yhs/connectal/generated/xilinx/AxiDdr3Wrapper.bsv

$(eval $(call BSV_BO_RULE, $(AxiDdr3Wrapper_BO), $(AxiDdr3Wrapper_BSV), $(AxiDdr3Wrapper_DEP), $(AxiDdr3Wrapper_INC)))

AxiEth1000BaseX_BO  = obj/AxiEth1000BaseX.bo
AxiEth1000BaseX_DEP = obj/AxiBits.bo obj/AxiStream.bo
AxiEth1000BaseX_INC = 
AxiEth1000BaseX_BSV = /home/yhs/connectal/generated/xilinx/AxiEth1000BaseX.bsv

$(eval $(call BSV_BO_RULE, $(AxiEth1000BaseX_BO), $(AxiEth1000BaseX_BSV), $(AxiEth1000BaseX_DEP), $(AxiEth1000BaseX_INC)))

PPS7LIB_BO  = obj/PPS7LIB.bo
PPS7LIB_DEP = obj/AxiBits.bo
PPS7LIB_INC = /home/yhs/clickp4_fpga/02-rewind/bluesim/generatedbsv/ConnectalProjectConfig.bsv
PPS7LIB_BSV = /home/yhs/connectal/generated/xilinx/PPS7LIB.bsv

$(eval $(call BSV_BO_RULE, $(PPS7LIB_BO), $(PPS7LIB_BSV), $(PPS7LIB_DEP), $(PPS7LIB_INC)))

PCIE_2_1_BO  = obj/PCIE_2_1.bo
PCIE_2_1_DEP = 
PCIE_2_1_INC = 
PCIE_2_1_BSV = /home/yhs/connectal/generated/xilinx/PCIE_2_1.bsv

$(eval $(call BSV_BO_RULE, $(PCIE_2_1_BO), $(PCIE_2_1_BSV), $(PCIE_2_1_DEP), $(PCIE_2_1_INC)))

AxiIntcBvi_BO  = obj/AxiIntcBvi.bo
AxiIntcBvi_DEP = obj/AxiBits.bo
AxiIntcBvi_INC = 
AxiIntcBvi_BSV = /home/yhs/connectal/generated/xilinx/AxiIntcBvi.bsv

$(eval $(call BSV_BO_RULE, $(AxiIntcBvi_BO), $(AxiIntcBvi_BSV), $(AxiIntcBvi_DEP), $(AxiIntcBvi_INC)))

BscanE2_BO  = obj/BscanE2.bo
BscanE2_DEP = 
BscanE2_INC = 
BscanE2_BSV = /home/yhs/connectal/generated/xilinx/BscanE2.bsv

$(eval $(call BSV_BO_RULE, $(BscanE2_BO), $(BscanE2_BSV), $(BscanE2_DEP), $(BscanE2_INC)))

AxiEthBvi_BO  = obj/AxiEthBvi.bo
AxiEthBvi_DEP = obj/AxiBits.bo obj/AxiStream.bo
AxiEthBvi_INC = 
AxiEthBvi_BSV = /home/yhs/connectal/generated/xilinx/AxiEthBvi.bsv

$(eval $(call BSV_BO_RULE, $(AxiEthBvi_BO), $(AxiEthBvi_BSV), $(AxiEthBvi_DEP), $(AxiEthBvi_INC)))

PCIEWRAPPER3_BO  = obj/PCIEWRAPPER3.bo
PCIEWRAPPER3_DEP = obj/AxiBits.bo
PCIEWRAPPER3_INC = 
PCIEWRAPPER3_BSV = /home/yhs/connectal/generated/xilinx/PCIEWRAPPER3.bsv

$(eval $(call BSV_BO_RULE, $(PCIEWRAPPER3_BO), $(PCIEWRAPPER3_BSV), $(PCIEWRAPPER3_DEP), $(PCIEWRAPPER3_INC)))

AxiDmaBvi_BO  = obj/AxiDmaBvi.bo
AxiDmaBvi_DEP = obj/ConnectalConfig.bo obj/AxiBits.bo obj/AxiStream.bo
AxiDmaBvi_INC = 
AxiDmaBvi_BSV = /home/yhs/connectal/generated/xilinx/AxiDmaBvi.bsv

$(eval $(call BSV_BO_RULE, $(AxiDmaBvi_BO), $(AxiDmaBvi_BSV), $(AxiDmaBvi_DEP), $(AxiDmaBvi_INC)))

PipeClock_BO  = obj/PipeClock.bo
PipeClock_DEP = 
PipeClock_INC = 
PipeClock_BSV = /home/yhs/connectal/generated/xilinx/PipeClock.bsv

$(eval $(call BSV_BO_RULE, $(PipeClock_BO), $(PipeClock_BSV), $(PipeClock_DEP), $(PipeClock_INC)))

Bufgctrl_BO  = obj/Bufgctrl.bo
Bufgctrl_DEP = 
Bufgctrl_INC = 
Bufgctrl_BSV = /home/yhs/connectal/generated/xilinx/Bufgctrl.bsv

$(eval $(call BSV_BO_RULE, $(Bufgctrl_BO), $(Bufgctrl_BSV), $(Bufgctrl_DEP), $(Bufgctrl_INC)))

PCIEWRAPPER2_BO  = obj/PCIEWRAPPER2.bo
PCIEWRAPPER2_DEP = 
PCIEWRAPPER2_INC = 
PCIEWRAPPER2_BSV = /home/yhs/connectal/generated/xilinx/PCIEWRAPPER2.bsv

$(eval $(call BSV_BO_RULE, $(PCIEWRAPPER2_BO), $(PCIEWRAPPER2_BSV), $(PCIEWRAPPER2_DEP), $(PCIEWRAPPER2_INC)))

Ddr3Wrapper_BO  = obj/Ddr3Wrapper.bo
Ddr3Wrapper_DEP = obj/AxiBits.bo
Ddr3Wrapper_INC = 
Ddr3Wrapper_BSV = /home/yhs/connectal/generated/xilinx/Ddr3Wrapper.bsv

$(eval $(call BSV_BO_RULE, $(Ddr3Wrapper_BO), $(Ddr3Wrapper_BSV), $(Ddr3Wrapper_DEP), $(Ddr3Wrapper_INC)))

PCIEWRAPPER_BO  = obj/PCIEWRAPPER.bo
PCIEWRAPPER_DEP = 
PCIEWRAPPER_INC = 
PCIEWRAPPER_BSV = /home/yhs/connectal/generated/xilinx/PCIEWRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(PCIEWRAPPER_BO), $(PCIEWRAPPER_BSV), $(PCIEWRAPPER_DEP), $(PCIEWRAPPER_INC)))

ALTERA_PCIE_SV_WRAPPER_BO  = obj/ALTERA_PCIE_SV_WRAPPER.bo
ALTERA_PCIE_SV_WRAPPER_DEP = 
ALTERA_PCIE_SV_WRAPPER_INC = 
ALTERA_PCIE_SV_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_PCIE_SV_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_PCIE_SV_WRAPPER_BO), $(ALTERA_PCIE_SV_WRAPPER_BSV), $(ALTERA_PCIE_SV_WRAPPER_DEP), $(ALTERA_PCIE_SV_WRAPPER_INC)))

ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_BO  = obj/ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER.bo
ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_DEP = 
ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_INC = 
ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_BO), $(ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_BSV), $(ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_DEP), $(ALTERA_PCIE_RECONFIG_DRIVER_WRAPPER_INC)))

ALTERA_ETH_PMA_WRAPPER_BO  = obj/ALTERA_ETH_PMA_WRAPPER.bo
ALTERA_ETH_PMA_WRAPPER_DEP = 
ALTERA_ETH_PMA_WRAPPER_INC = 
ALTERA_ETH_PMA_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_ETH_PMA_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_ETH_PMA_WRAPPER_BO), $(ALTERA_ETH_PMA_WRAPPER_BSV), $(ALTERA_ETH_PMA_WRAPPER_DEP), $(ALTERA_ETH_PMA_WRAPPER_INC)))

ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_BO  = obj/ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER.bo
ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_DEP = 
ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_INC = 
ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_BO), $(ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_BSV), $(ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_DEP), $(ALTERA_ETH_PMA_RESET_CONTROL_WRAPPER_INC)))

ALTERA_PLL_WRAPPER_BO  = obj/ALTERA_PLL_WRAPPER.bo
ALTERA_PLL_WRAPPER_DEP = 
ALTERA_PLL_WRAPPER_INC = 
ALTERA_PLL_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_PLL_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_PLL_WRAPPER_BO), $(ALTERA_PLL_WRAPPER_BSV), $(ALTERA_PLL_WRAPPER_DEP), $(ALTERA_PLL_WRAPPER_INC)))

ALTERA_XCVR_RECONFIG_WRAPPER_BO  = obj/ALTERA_XCVR_RECONFIG_WRAPPER.bo
ALTERA_XCVR_RECONFIG_WRAPPER_DEP = 
ALTERA_XCVR_RECONFIG_WRAPPER_INC = 
ALTERA_XCVR_RECONFIG_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_XCVR_RECONFIG_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_XCVR_RECONFIG_WRAPPER_BO), $(ALTERA_XCVR_RECONFIG_WRAPPER_BSV), $(ALTERA_XCVR_RECONFIG_WRAPPER_DEP), $(ALTERA_XCVR_RECONFIG_WRAPPER_INC)))

ALTERA_PCIE_ED_WRAPPER_BO  = obj/ALTERA_PCIE_ED_WRAPPER.bo
ALTERA_PCIE_ED_WRAPPER_DEP = 
ALTERA_PCIE_ED_WRAPPER_INC = 
ALTERA_PCIE_ED_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_PCIE_ED_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_PCIE_ED_WRAPPER_BO), $(ALTERA_PCIE_ED_WRAPPER_BSV), $(ALTERA_PCIE_ED_WRAPPER_DEP), $(ALTERA_PCIE_ED_WRAPPER_INC)))

ALTERA_PCIE_SIV_WRAPPER_BO  = obj/ALTERA_PCIE_SIV_WRAPPER.bo
ALTERA_PCIE_SIV_WRAPPER_DEP = 
ALTERA_PCIE_SIV_WRAPPER_INC = 
ALTERA_PCIE_SIV_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_PCIE_SIV_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_PCIE_SIV_WRAPPER_BO), $(ALTERA_PCIE_SIV_WRAPPER_BSV), $(ALTERA_PCIE_SIV_WRAPPER_DEP), $(ALTERA_PCIE_SIV_WRAPPER_INC)))

ALTERA_ETH_PMA_RECONFIG_WRAPPER_BO  = obj/ALTERA_ETH_PMA_RECONFIG_WRAPPER.bo
ALTERA_ETH_PMA_RECONFIG_WRAPPER_DEP = 
ALTERA_ETH_PMA_RECONFIG_WRAPPER_INC = 
ALTERA_ETH_PMA_RECONFIG_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_ETH_PMA_RECONFIG_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_ETH_PMA_RECONFIG_WRAPPER_BO), $(ALTERA_ETH_PMA_RECONFIG_WRAPPER_BSV), $(ALTERA_ETH_PMA_RECONFIG_WRAPPER_DEP), $(ALTERA_ETH_PMA_RECONFIG_WRAPPER_INC)))

ALTERA_DDR3_WRAPPER_BO  = obj/ALTERA_DDR3_WRAPPER.bo
ALTERA_DDR3_WRAPPER_DEP = obj/AxiBits.bo
ALTERA_DDR3_WRAPPER_INC = 
ALTERA_DDR3_WRAPPER_BSV = /home/yhs/connectal/generated/altera/ALTERA_DDR3_WRAPPER.bsv

$(eval $(call BSV_BO_RULE, $(ALTERA_DDR3_WRAPPER_BO), $(ALTERA_DDR3_WRAPPER_BSV), $(ALTERA_DDR3_WRAPPER_DEP), $(ALTERA_DDR3_WRAPPER_INC)))
