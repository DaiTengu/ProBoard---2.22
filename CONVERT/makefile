## Makefile for ProBoard's CONVERT.EXE

!include ..\common.mk

PB_LIB   = ..\LIBS

OBJS = convert.obj racvt.obj pbcvt.obj rasimul1.obj rasimul2.obj qbbscvt.obj maximus.obj sbbs.obj

LIBS = $(PB_LIB)\TSLIB_L.LIB $(PB_LIB)\PBLIB_L.LIB

CPPFLAGS = -I..

all: mc.cfg convert.exe

convert.exe: $(OBJS) $(LIBS)
	$(TLINK) /c /x /L$(LIBDIR) @&&|
	c0l  $(OBJS)
$*
nul
emu mathl overlay cl $(LIBS) 
|

clean:
  -@del *.obj
  -@del mc.cfg
  -@del convert.exe


!include ../mc.mk

