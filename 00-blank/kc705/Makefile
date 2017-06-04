

##    run: run the program
##         pass parameters to software via 'make RUN_ARGS= run'
RUN_ARGS?=

export DTOP=/home/yhs/clickp4_fpga/00-blank/kc705
CONNECTALDIR=/home/yhs/connectal
BSVPATH = /home/yhs/p4fpga/bsv/infra:/home/yhs/connectal/bsv:/home/yhs/clickp4_fpga/00-blank/generatedbsv:/home/yhs/sonic-lite/hw/bsv:/home/yhs/clickp4_fpga/00-blank/kc705/generatedbsv:/home/yhs/clickp4_fpga/00-blank:/home/yhs/p4fpga/bsv/datapath:/home/yhs/p4fpga/bsv/generated:/home/yhs/p4fpga/bsv/library:/home/yhs/p4fpga/bsv/library/AsymmetricBRAM:/home/yhs/p4fpga/bsv/library/Bcam:/home/yhs/p4fpga/bsv/library/DMHC:/home/yhs/p4fpga/bsv:/home/yhs/connectal/lib/bsv:/home/yhs/connectal/generated/xilinx:/home/yhs/connectal/generated/altera

BOARD=kc705
PROJECTDIR=/home/yhs/clickp4_fpga/00-blank/kc705
MKTOP=mkPcieTop
OS=ubuntu
TOOLCHAIN?=
DUT=mkpcietop

export INTERFACES = MemServerRequest MMURequest MemServerIndication MMUIndication MainRequest MainIndication MemServerIndication
BSVFILES = /home/yhs/p4fpga/bsv/infra/Main.bsv /home/yhs/p4fpga/bsv/infra/MainAPI.bsv /home/yhs/connectal/bsv/ConnectalMemory.bsv /home/yhs/clickp4_fpga/00-blank/generatedbsv/ConnectalTypes.bsv /home/yhs/sonic-lite/hw/bsv/DbgDefs.bsv /home/yhs/clickp4_fpga/00-blank/kc705/generatedbsv/IfcNames.bsv /home/yhs/connectal/bsv/DisplayInd.bsv
XCIFILES = /home/yhs/connectal/out/kc705/pcie_7x_0/pcie_7x_0.xci

BSCFLAGS_PROJECT = -show-range-conflict +RTS -K596777766 -RTS -demote-errors G0066:G0045 -suppress-warnings G0046:G0020:G0023:S0015:S0080:S0039 -steps-max-intervals 20 -no-warn-action-shadowing +RTS -K46777216 -RTS
SIM_CXX_PROJECT = /home/yhs/clickp4_fpga/00-blank/matchtable_model.cpp /home/yhs/p4fpga/bsv/library/AsymmetricBRAM/mem_model.c
CFLAGS_PROJECT = 
CXXFLAGS_PROJECT = -std=c++11 -L"/home/hwang/questasim/questa_sim/gcc-4.3.3-linux_x86_64/lib64"
XELABFLAGS = 
XSIMFLAGS  = -R
TOPBSVFILE = /home/yhs/connectal/bsv/PcieTop.bsv
BSVDEFINES =  -D PARSER=Parser -D DEPARSER=Deparser -D MATCHTABLE=Control -D TYPEDEF=StructDefines -D NUM_RXCHAN=1 -D NUM_TXCHAN=1 -D NUM_HOSTCHAN=1 -D STREAM -D NUM_RXCHAN=1 -D NUM_TXCHAN=1 -D NUM_HOSTCHAN=1 -D NUM_METAGEN=1 -D NUM_PKTGEN=1 -D STREAM -D NicVersion=1579743661 -D DataBusWidth=128 -D IMPORT_HOSTIF -D BYTE_ENABLES -D ClockDefaultParam -D ConnectalVersion=16.11.1 -D NumberOfMasters=1 -D PinType=Empty -D PinTypeInclude=Misc -D NumberOfUserTiles=1 -D SlaveDataBusWidth=32 -D SlaveControlAddrWidth=5 -D BurstLenSize=12 -D project_dir=$(DTOP) -D MainClockPeriod=8 -D DerivedClockPeriod=4.000000 -D PcieClockPeriod=8 -D XILINX=1 -D Kintex7 -D PCIE -D PCIE1 -D PcieHostInterface -D PhysAddrWidth=40 -D PcieLanes=8 -D CONNECTAL_BITS_DEPENDENCES=hw/mkTop.bit -D CONNECTAL_RUN_SCRIPT=$(CONNECTALDIR)/scripts/run.pcietest -D BOARD_kc705
QTUSED = 
export BSVDEFINES_LIST = PARSER=Parser DEPARSER=Deparser MATCHTABLE=Control TYPEDEF=StructDefines NUM_RXCHAN=1 NUM_TXCHAN=1 NUM_HOSTCHAN=1 STREAM NUM_RXCHAN=1 NUM_TXCHAN=1 NUM_HOSTCHAN=1 NUM_METAGEN=1 NUM_PKTGEN=1 STREAM NicVersion=1579743661 DataBusWidth=128 IMPORT_HOSTIF BYTE_ENABLES ClockDefaultParam ConnectalVersion=16.11.1 NumberOfMasters=1 PinType=Empty PinTypeInclude=Misc NumberOfUserTiles=1 SlaveDataBusWidth=32 SlaveControlAddrWidth=5 BurstLenSize=12 project_dir=$(DTOP) MainClockPeriod=8 DerivedClockPeriod=4.000000 PcieClockPeriod=8 XILINX=1 Kintex7 PCIE PCIE1 PcieHostInterface PhysAddrWidth=40 PcieLanes=8 CONNECTAL_BITS_DEPENDENCES=hw/mkTop.bit CONNECTAL_RUN_SCRIPT=$(CONNECTALDIR)/scripts/run.pcietest BOARD_kc705
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
NicVersion=1579743661
DataBusWidth=128
IMPORT_HOSTIF=IMPORT_HOSTIF
BYTE_ENABLES=BYTE_ENABLES
ClockDefaultParam=ClockDefaultParam
ConnectalVersion=16.11.1
NumberOfMasters=1
PinType=Empty
PinTypeInclude=Misc
NumberOfUserTiles=1
SlaveDataBusWidth=32
SlaveControlAddrWidth=5
BurstLenSize=12
project_dir=$(DTOP)
MainClockPeriod=8
DerivedClockPeriod=4.000000
PcieClockPeriod=8
XILINX=1
Kintex7=Kintex7
PCIE=PCIE
PCIE1=PCIE1
PcieHostInterface=PcieHostInterface
PhysAddrWidth=40
PcieLanes=8
CONNECTAL_BITS_DEPENDENCES=hw/mkTop.bit
CONNECTAL_RUN_SCRIPT=$(CONNECTALDIR)/scripts/run.pcietest
BOARD_kc705=BOARD_kc705


include $(CONNECTALDIR)/scripts/Makefile.connectal.build


export VERILOG_PATH=verilog /home/yhs/p4fpga/bsv/verilog /home/yhs/connectal/verilog/xilinx /home/yhs/connectal/verilog $(BLUESPEC_VERILOG)
MODELSIM_FILES= 
FPGAMAKE=$(CONNECTALDIR)/../fpgamake/fpgamake
fpgamake.mk: $(VFILE) Makefile prepare_bin_target
	$(Q)if [ -f ../synth-ip.tcl ]; then vivado -mode batch -source ../synth-ip.tcl; fi
	$(Q)$(FPGAMAKE) $(FPGAMAKE_VERBOSE) -o fpgamake.mk --board=kc705 --part=xc7k325tffg900-2  --floorplan= --constraint=/home/yhs/connectal/constraints/xilinx/kc705.xdc --implconstraint=/home/yhs/connectal/constraints/xilinx/kc705.xdc --implconstraint=/home/yhs/connectal/constraints/xilinx/pcie-clocks.xdc --xci=/home/yhs/connectal/out/kc705/pcie_7x_0/pcie_7x_0.xci --tcl=/home/yhs/connectal/constraints/xilinx/cdc.tcl   -t $(MKTOP)  --cachedir="" -b hw/mkTop.bit   $(VERILOG_PATH)

synth.%:fpgamake.mk
	$(MAKE) -f fpgamake.mk Synth/$*/$*-synth.dcp

hw/mkTop.bit: prepare_bin_target  fpgamake.mk
	$(Q)mkdir -p hw
	$(Q)$(MAKE) -f fpgamake.mk
ifneq ($(XILINX),)
	$(Q)rsync -rav --include="*/" --include="*.txt" --exclude="*" Impl/ bin
else ifneq ($(ALTERA),)
	$(Q)cp -f $(MKTOP).sof bin
endif




