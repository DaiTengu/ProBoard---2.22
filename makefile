!include common.mk

DISTDIR=out

all:
  cd ver
  $(MAKE) all
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
  cd ver
  @$(MAKE) clean
  @cd ..
  @cd libs
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
  -del/q OUT\*.*
  -@rmdir out

help:
  @echo Usage: 
  @echo.
  @echo Make sure that BORLANDC\BIN is in your path then run:
  @echo MAKE all
  @echo.
  @echo To cleanup (delete) the OBJ and EXE files built and return the source code back
  @echo to a pristine state, run the following:
  @echo make clean
  echo.
  @echo To create a installation disk in OUT/ run the following:
  @echo make dist
  @echo.
  @echo Now you can zip up to make a new archive like: 
  @echo cd OUT
  @echo zip ..\PB223.ZIP *
  @echo cd ..

dist: all
  @echo there is no make dist yet, but this will eventualy build the PROBOARD binary
  @-mkdir $(DISTDIR)
  copy convert\convert.exe $(DISTDIR)
  copy install\install.cfg $(DISTDIR)
  copy install\install.exe $(DISTDIR)
  copy install\config.tpl $(DISTDIR)
  copy dist\doc\*.* $(DISTDIR)
  copy dist\mnu\*.* $(DISTDIR)
  copy dist\pex\*.* $(DISTDIR)
  copy dist\sdk\*.* $(DISTDIR)
  copy dist\sys\*.* $(DISTDIR)
  copy dist\txt\*.* $(DISTDIR)
  copy pbutil\pbutil.exe $(DISTDIR)
  copy proboard\proboard.exe $(DISTDIR)
  copy procfg\procfg.exe $(DISTDIR)
