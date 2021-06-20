## Makefile for INSTALL

!include ..\common.mk

PB_LIB   = ..\LIBS

OBJS = install.obj lzhuf.obj editdir.obj readcfg.obj

LIBS = $(PB_LIB)\TSLIB_L.LIB $(PB_LIB)\TSWIN_L.LIB \
       $(PB_LIB)\PBLIB_L.LIB
CPPFLAGS = -I..

all: mc.cfg install.exe

install.exe: $(OBJS) $(LIBS)
	$(TLINK) /c /x /L$(LIBDIR) @&&|
	c0l  $(OBJS)
$*
nul
emu mathl overlay cl $(LIBS) 
|

clean:
  -@del *.obj
  -@del mc.cfg
  -@del install.exe


!include ../mc.mk
