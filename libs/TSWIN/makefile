!include ..\..\common.mk
PB_LIB   = ..


OBJS = error.obj init.obj keyboard.obj misc.obj popmenu.obj \
       rectang.obj scan.obj select.obj viewlist.obj window.obj pws_asm.obj \
       form.obj restore.obj editwin.obj gauge.obj savebuf.obj msgbox.obj \
       selbox.obj tsw_asm.obj

all: mc.cfg ..\TSWIN_$(EXT).LIB

..\TSWIN_$(EXT).LIB: $(OBJS)
   -erase $@
   &$(TLIB) $@ +$?

clean:
  -@del *.obj
  -@del mc.cfg

!include ..\..\mc.mk
