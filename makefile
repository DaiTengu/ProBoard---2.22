!include common.mk

all:
  cd ver
  &(MAKE) all
  cd ..
  cd libs
  $(MAKE) all
  cd ..
  cd proboard
  $(MAKE)
  cd ..
  cd pbutil
  $(MAKE) all
  cd ..
  cd procfg
  $(MAKE) all
  cd ..
  cd convert
  $(MAKE) all
  cd ..
  cd install
  $(MAKE) all
  cd ..

clean:
  @cd libs
  cd ver
  &(MAKE) clean
  cd ..
  @$(MAKE) clean
  @cd ..
  @cd proboard
  @$(MAKE) clean
  @cd ..
  @cd pbutil
  @$(MAKE) clean
  @cd ..
  @cd procfg
  @$(MAKE) clean
  @cd ..
  @cd convert
  @$(MAKE) clean
  @cd ..
  @cd install
  @$(MAKE) clean
  @cd ..

help:
  @echo Usage: 
  @echo.
  @echo Make sure that BORLANDC\BIN is in your path then run:
  @echo MAKE all
  @echo.
  @echo To cleanup (delete) the OBJ and EXE files built and return the source code back
  @echo to a pristine state, run the following:
  @echo make clean

dist:
  @echo there is no make dist yet, but this will eventualy build the PROBOARD binary