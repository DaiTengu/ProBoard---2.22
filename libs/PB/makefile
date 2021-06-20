!include ..\..\common.mk

# Need to override this
PB_LIB   = ..

.cpp.obj: 
  $(CC) @mc.cfg $(CPPFLAGS) -I. -I..\TH -Yo -c { $< }

# these seem to be also done in pbclass.hpp
# PB_BINLG.OBJ  PB_EVENT.OBJ  PB_FLIDX.OBJ  PB_MODEM.OBJ  PB_PROTO.OBJ  
# PB_USRPB.OBJ   PB_FILES.OBJ  PB_LIMIT.OBJ  PB_MSGS.OBJ   PB_USRRA.OBJ
#  PB_USRDX.OBJ PB_CONFG.OBJ  PB_OLINE.OBJ 
OBJS =  \
       PB_BOARD.OBJ PB_REGKY.OBJ   \
       PB_FLAGS.OBJ  PB_MISC.OBJ   


all: mc.cfg ..\PROBOARD.LIB

..\PROBOARD.LIB: $(OBJS)
   -erase $@
   &$(TLIB) $@ +$?

clean:
  -@del *.obj
  -@del mc.cfg
  -@del PROBOARD.BAK
  -@del PROBOARD.LIB
  -@del ..\PROBOARD.BAK
  -@del ..\PROBOARD.LIB

!include ..\..\mc.mk

