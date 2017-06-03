
CONNECTALDIR?=/home/yhs/connectal
DTOP?=/home/yhs/clickp4_fpga/00-blank/kc705

TOOLCHAIN?=
ifneq ($(TOOLCHAIN),)
CC=$(TOOLCHAIN)gcc
CXX=$(TOOLCHAIN)g++
endif
CFLAGS_COMMON = -O -g -I$(DTOP)/jni -I$(CONNECTALDIR) -I$(CONNECTALDIR)/cpp -I$(CONNECTALDIR)/lib/cpp -I/home/yhs/p4fpga/cpp  -Wall -Werror -I$(DTOP)/jni -I$(CONNECTALDIR) -I$(CONNECTALDIR)/cpp -I$(CONNECTALDIR)/lib/cpp -I/home/yhs/p4fpga/cpp -std=c++11 -L\"/home/hwang/questasim/questa_sim/gcc-4.3.3-linux_x86_64/lib64\"
CFLAGS = $(CFLAGS_COMMON)
CFLAGS2 = 

include $(DTOP)/Makefile.autotop
include $(CONNECTALDIR)/scripts/Makefile.connectal.application
SOURCES = /home/yhs/clickp4_fpga/00-blank/main.cpp /home/yhs/sonic-lite/sw/lpcap.c /home/yhs/clickp4_fpga/00-blank/app_init.cpp /home/yhs/connectal/cpp/dmaManager.c /home/yhs/connectal/cpp/platformMemory.cpp $(PORTAL_SRC_FILES)
SOURCES2 =  $(PORTAL_SRC_FILES)
XSOURCES = $(CONNECTALDIR)/cpp/XsimTop.cpp $(PORTAL_SRC_FILES)
LDLIBS :=  -lpcap -lpthread  -lpthread

ubuntu.exe: $(SOURCES)
	$(Q)$(CXX) $(CFLAGS) -o ubuntu.exe $(SOURCES) $(LDLIBS)
	$(Q)[ ! -f ../bin/mkTop.bin.gz ] || $(TOOLCHAIN)objcopy --add-section fpgadata=../bin/mkTop.bin.gz ubuntu.exe

connectal.so: $(SOURCES)
	$(Q)$(CXX) -shared -fpic $(CFLAGS) -o connectal.so $(SOURCES) $(LDLIBS)

ubuntu.exe2: $(SOURCES2)
	$(Q)$(CXX) $(CFLAGS) $(CFLAGS2) -o ubuntu.exe2 $(SOURCES2) $(LDLIBS)

xsim: $(XSOURCES)
	$(CXX) $(CFLAGS) -o xsim $(XSOURCES)
