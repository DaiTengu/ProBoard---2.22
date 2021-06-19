## Makefile for PBUTIL

!include ..\common.mk

PB_LIB   = ..\LIBS

OBJS = pbutil.obj userpack.obj msgpack.obj fc.obj msgidx.obj nodelist.obj \
       usersort.obj userkill.obj useridx.obj msgkill.obj msglink.obj \
       msgrep.obj musplay.obj userfix.obj fidx.obj checkbl.obj jampack.obj \
       maint.obj hatch.obj

LIBS = $(PB_LIB)\TSLIB_L.LIB $(PB_LIB)\PBLIB_L.LIB

CFLAGS = -I$(PB_LIB)\pb -I$(PB_LIB)\TSLIB

all: mc.cfg pbutil.exe

pbutil.exe: $(OBJS) $(LIBS)
	$(TLINK) /c /x /L$(LIBDIR) @&&|
	c0l  $(OBJS)
$*
nul
emu mathl overlay cl $(LIBS) 
|

clean:
  -del *.obj
  -del mc.cfg
  -del pbutil.exe


!include ../mc.mk
