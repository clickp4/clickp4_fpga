

##    run: run the program
##         pass parameters to software via 'make RUN_ARGS= run'
RUN_ARGS?=

export DTOP=/home/yhs/clickp4_fpga/l2_switch/nfsume
CONNECTALDIR=/home/yhs/connectal
BSVPATH = /home/yhs/p4fpga/bsv/infra:/home/yhs/connectal/bsv:/home/yhs/clickp4_fpga/l2_switch/generatedbsv:/home/yhs/sonic-lite/hw/bsv:/home/yhs/clickp4_fpga/l2_switch/nfsume/generatedbsv:/home/yhs/clickp4_fpga/l2_switch:/home/yhs/p4fpga/bsv/datapath:/home/yhs/p4fpga/bsv/generated:/home/yhs/p4fpga/bsv/library:/home/yhs/p4fpga/bsv/library/AsymmetricBRAM:/home/yhs/p4fpga/bsv/library/Bcam:/home/yhs/p4fpga/bsv/library/DMHC:/home/yhs/p4fpga/bsv:/home/yhs/connectal/lib/bsv:/home/yhs/connectal/generated/xilinx:/home/yhs/connectal/generated/altera

BOARD=nfsume
PROJECTDIR=/home/yhs/clickp4_fpga/l2_switch/nfsume
MKTOP=mkPcieTop
OS=ubuntu
TOOLCHAIN?=
DUT=mkpcietop

export INTERFACES = MemServerRequest MMURequest MemServerIndication MMUIndication MainRequest MainIndication MemServerIndication
BSVFILES = /home/yhs/p4fpga/bsv/infra/Main.bsv /home/yhs/p4fpga/bsv/infra/MainAPI.bsv /home/yhs/connectal/bsv/ConnectalMemory.bsv /home/yhs/clickp4_fpga/l2_switch/generatedbsv/ConnectalTypes.bsv /home/yhs/sonic-lite/hw/bsv/DbgDefs.bsv /home/yhs/clickp4_fpga/l2_switch/nfsume/generatedbsv/IfcNames.bsv /home/yhs/connectal/bsv/DisplayInd.bsv
XCIFILES = /home/yhs/connectal/out/nfsume/ten_gig_eth_mac_0/ten_gig_eth_mac_0.xci /home/yhs/connectal/out/nfsume/ten_gig_eth_pcs_pma_shared/ten_gig_eth_pcs_pma_shared.xci /home/yhs/connectal/out/nfsume/ten_gig_eth_pcs_pma_non_shared/ten_gig_eth_pcs_pma_non_shared.xci /home/yhs/connectal/out/nfsume/pcie3_7x_0/pcie3_7x_0.xci

BSCFLAGS_PROJECT = -show-range-conflict +RTS -K596777766 -RTS -demote-errors G0066:G0045 -suppress-warnings G0046:G0020:G0023:S0015:S0080:S0039 -steps-max-intervals 20 -no-warn-action-shadowing +RTS -K46777216 -RTS
SIM_CXX_PROJECT = /home/yhs/clickp4_fpga/l2_switch/matchtable_model.cpp /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/mem_model.c
CFLAGS_PROJECT = 
CXXFLAGS_PROJECT = -std=c++11 -L"/home/hwang/questasim/questa_sim/gcc-4.3.3-linux_x86_64/lib64"
XELABFLAGS = 
XSIMFLAGS  = -R
TOPBSVFILE = /home/yhs/connectal/bsv/PcieTop.bsv
BSVDEFINES =  -D PARSER=Parser -D DEPARSER=Deparser -D MATCHTABLE=Control -D TYPEDEF=StructDefines -D NUM_RXCHAN=1 -D NUM_TXCHAN=1 -D NUM_HOSTCHAN=1 -D STREAM -D NUM_RXCHAN=1 -D NUM_TXCHAN=1 -D NUM_HOSTCHAN=1 -D NUM_METAGEN=1 -D NUM_PKTGEN=1 -D STREAM -D NicVersion=2597774736 -D DataBusWidth=128 -D IMPORT_HOSTIF -D BYTE_ENABLES -D ClockDefaultParam -D XILINX_SYS_CLK -D ConnectalVersion=16.11.1 -D NumberOfMasters=1 -D PinType=NfsumePins -D PinTypeInclude=NfsumePins -D NumberOfUserTiles=1 -D SlaveDataBusWidth=32 -D SlaveControlAddrWidth=5 -D BurstLenSize=12 -D project_dir=$(DTOP) -D MainClockPeriod=4 -D DerivedClockPeriod=4.000000 -D PcieClockPeriod=4 -D XILINX=1 -D Virtex7 -D PCIE -D PCIE3 -D PcieHostInterface -D PhysAddrWidth=40 -D NUMBER_OF_LEDS=2 -D PcieLanes=8 -D CONNECTAL_BITS_DEPENDENCES=hw/mkTop.bit -D CONNECTAL_RUN_SCRIPT=$(CONNECTALDIR)/scripts/run.pcietest -D BOARD_nfsume
QTUSED = 
export BSVDEFINES_LIST = PARSER=Parser DEPARSER=Deparser MATCHTABLE=Control TYPEDEF=StructDefines NUM_RXCHAN=1 NUM_TXCHAN=1 NUM_HOSTCHAN=1 STREAM NUM_RXCHAN=1 NUM_TXCHAN=1 NUM_HOSTCHAN=1 NUM_METAGEN=1 NUM_PKTGEN=1 STREAM NicVersion=2597774736 DataBusWidth=128 IMPORT_HOSTIF BYTE_ENABLES ClockDefaultParam XILINX_SYS_CLK ConnectalVersion=16.11.1 NumberOfMasters=1 PinType=NfsumePins PinTypeInclude=NfsumePins NumberOfUserTiles=1 SlaveDataBusWidth=32 SlaveControlAddrWidth=5 BurstLenSize=12 project_dir=$(DTOP) MainClockPeriod=4 DerivedClockPeriod=4.000000 PcieClockPeriod=4 XILINX=1 Virtex7 PCIE PCIE3 PcieHostInterface PhysAddrWidth=40 NUMBER_OF_LEDS=2 PcieLanes=8 CONNECTAL_BITS_DEPENDENCES=hw/mkTop.bit CONNECTAL_RUN_SCRIPT=$(CONNECTALDIR)/scripts/run.pcietest BOARD_nfsume
export DUT_NAME = mkPcieTop





PARSER=Parser
DEPARSER=Deparser
MATCHTABLE=Control
TYPEDEF=StructDefines
NUM_RXCHAN=1
NUM_TXCHAN=1
NUM_HOSTCHAN=1
STREAM=STREAM
NUM_RXCHAN=1
NUM_TXCHAN=1
NUM_HOSTCHAN=1
NUM_METAGEN=1
NUM_PKTGEN=1
STREAM=STREAM
NicVersion=2597774736
DataBusWidth=128
IMPORT_HOSTIF=IMPORT_HOSTIF
BYTE_ENABLES=BYTE_ENABLES
ClockDefaultParam=ClockDefaultParam
XILINX_SYS_CLK=XILINX_SYS_CLK
ConnectalVersion=16.11.1
NumberOfMasters=1
PinType=NfsumePins
PinTypeInclude=NfsumePins
NumberOfUserTiles=1
SlaveDataBusWidth=32
SlaveControlAddrWidth=5
BurstLenSize=12
project_dir=$(DTOP)
MainClockPeriod=4
DerivedClockPeriod=4.000000
PcieClockPeriod=4
XILINX=1
Virtex7=Virtex7
PCIE=PCIE
PCIE3=PCIE3
PcieHostInterface=PcieHostInterface
PhysAddrWidth=40
NUMBER_OF_LEDS=2
PcieLanes=8
CONNECTAL_BITS_DEPENDENCES=hw/mkTop.bit
CONNECTAL_RUN_SCRIPT=$(CONNECTALDIR)/scripts/run.pcietest
BOARD_nfsume=BOARD_nfsume


include $(CONNECTALDIR)/scripts/Makefile.connectal.build


export VERILOG_PATH=verilog /home/yhs/p4fpga/bsv/verilog /home/yhs/p4fpga/bsv/AsymmetricBRAM /home/yhs/connectal/verilog/xilinx /home/yhs/connectal/verilog $(BLUESPEC_VERILOG)
MODELSIM_FILES= 
FPGAMAKE=$(CONNECTALDIR)/../fpgamake/fpgamake
fpgamake.mk: $(VFILE) Makefile prepare_bin_target
	$(Q)if [ -f ../synth-ip.tcl ]; then vivado -mode batch -source ../synth-ip.tcl; fi
	$(Q)$(FPGAMAKE) $(FPGAMAKE_VERBOSE) -o fpgamake.mk --board=nfsume --part=xc7vx690tffg1761-3 -s mkPcieHost --floorplan= --constraint=/home/yhs/connectal/constraints/xilinx/nfsume.xdc --constraint=/home/yhs/clickp4_fpga/l2_switch/timing_constraints.xdc --constraint=/home/yhs/clickp4_fpga/l2_switch/nfsume/sources/pinout-nfsume.xdc --implconstraint=/home/yhs/connectal/constraints/xilinx/nfsume.xdc --implconstraint=/home/yhs/connectal/constraints/xilinx/pcie-clocks.xdc --implconstraint=/home/yhs/clickp4_fpga/l2_switch/timing_constraints.xdc --implconstraint=/home/yhs/clickp4_fpga/l2_switch/nfsume/sources/pinout-nfsume.xdc --xci=/home/yhs/connectal/out/nfsume/ten_gig_eth_mac_0/ten_gig_eth_mac_0.xci --xci=/home/yhs/connectal/out/nfsume/ten_gig_eth_pcs_pma_shared/ten_gig_eth_pcs_pma_shared.xci --xci=/home/yhs/connectal/out/nfsume/ten_gig_eth_pcs_pma_non_shared/ten_gig_eth_pcs_pma_non_shared.xci --xci=/home/yhs/connectal/out/nfsume/pcie3_7x_0/pcie3_7x_0.xci --tcl=/home/yhs/connectal/constraints/xilinx/cdc.tcl   -t $(MKTOP)  --cachedir="" -b hw/mkTop.bit   $(VERILOG_PATH)

synth.%:fpgamake.mk
	$(MAKE) -f fpgamake.mk Synth/$*/$*-synth.dcp

hw/mkTop.bit: prepare_bin_target /home/yhs/clickp4_fpga/l2_switch/nfsume/sources/pinout-nfsume.xdc fpgamake.mk
	$(Q)mkdir -p hw
	$(Q)$(MAKE) -f fpgamake.mk
ifneq ($(XILINX),)
	$(Q)rsync -rav --include="*/" --include="*.txt" --exclude="*" Impl/ bin
else ifneq ($(ALTERA),)
	$(Q)cp -f $(MKTOP).sof bin
endif



PIN_BINDING=-b LED:LED -b SFP:SFP -b SFPA:SFPA -b SFPB:SFPB -b SFPC:SFPC -b SFPD:SFPD

/home/yhs/clickp4_fpga/l2_switch/nfsume/sources/pinout-nfsume.xdc: /home/yhs/p4fpga/boards/nfsume.json $(CONNECTALDIR)/boardinfo/nfsume.json
	mkdir -p /home/yhs/clickp4_fpga/l2_switch/nfsume/sources
	$(CONNECTALDIR)/scripts/generate-constraints.py -f xilinx $(PIN_BINDING) -o /home/yhs/clickp4_fpga/l2_switch/nfsume/sources/pinout-nfsume.xdc --boardfile $(CONNECTALDIR)/boardinfo/nfsume.json --pinoutfile /home/yhs/p4fpga/boards/nfsume.json



