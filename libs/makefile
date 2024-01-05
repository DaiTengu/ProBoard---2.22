!include "..\common.mk"

# Need to override this
PB_LIB   = ..

ALL_LIBS = PBLIB_$(EXT).LIB SQSH_$(EXT).LIB TSWIN_$(EXT).LIB \
           TSLIB_$(EXT).LIB THEHOUSE.LIB PROBOARD.LIB

all: $(ALL_LIBS)


PBLIB_$(EXT).LIB:
  cd PBLIB
  -$(MAKE) all
  cd ..

TSLIB_$(EXT).LIB:
  cd TSLIB
  -$(MAKE) all
  cd ..

TSWIN_$(EXT).LIB:
  cd TSWIN
  -$(MAKE) all
  cd ..

SQSH_$(EXT).LIB:
  cd SQUISH\SRC
  -$(MAKE)
  -copy BC_MAPIL.LIB ..\..\SQSH_L.LIB
  cd ..\..

THEHOUSE.LIB:
  cd TH
  -$(MAKE) all
  cd ..

PROBOARD.LIB:
  cd PB
  -$(MAKE) all
  cd ..

clean:
  -@erase PBLIB_$(EXT).LIB 
  -@erase SQSH_$(EXT).LIB
  -@erase TSWIN_$(EXT).LIB
  -@erase TSLIB_$(EXT).LIB
  -@del *.bak
  -@del /s mc.cfg
  -@del SQUISH\SRC\*.obj
  -@del TSLIB\*.obj
  -@del TSWIN\*.obj
  -@del PBLIB\*.obj
  -@del THEHOUSE.LIB
  -@del PROBOARD.LIB
  @cd TSLIB
  @-$(MAKE) clean
  @cd ..\PBLIB
  @-$(MAKE) clean
  @cd ..\TSLIB
  @-$(MAKE) clean
  @cd ..\TSWIN
  @-$(MAKE) clean
  @cd ..\TH
  @-$(MAKE) clean
  @cd ..\PB
  @-$(MAKE) clean
  @cd ..

