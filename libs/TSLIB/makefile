!include ..\..\common.mk

# Need to override this
PB_LIB   = ..

OBJS = date.obj dirscan.obj find.obj dstring.obj bitarray.obj \
       sound.obj misc.obj crc16.obj crc32.obj fuzzy.obj \
       form.obj msdos.obj fname.obj file.obj inivar.obj dirfunc.obj \
       copyfile.obj

all: mc.cfg ..\TSLIB_$(EXT).LIB

..\TSLIB_$(EXT).LIB: $(OBJS)
   -erase $@
   &$(TLIB) $@ +$?

clean:
  -del *.obj
  -del mc.cfg

!include ..\..\mc.mk

