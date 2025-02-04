    ## Makefile for ProBoard v1.xx

## Caution!! The standard Borland C++ library has to be changed before compiling
## ProBoard v1.30 - The __NFILE__ macro in the file _nfile.h should be changed to
## 100. The files FILES.C and FILES2.C in the RTL\CLIB directory should be
## recompiled using all memory models, and updated in C?.LIB

###################################################################################
# You shouldn't have to touch things under here
!include ..\common.mk
OBJS = chat.obj      shell.obj     login.obj     pbuser.obj    readmsg.obj  \
       mailchk.obj   msg.obj       zip.obj      \
       writemsg.obj  tops.obj      forward.obj   replymsg.obj  timestat.obj \
       msgdel.obj    combined.obj  question.obj  aka.obj       qscanmsg.obj \
       showmsg.obj   scanmsg.obj   version.obj   rawdir.obj    msged.obj    \
       dl.obj        viewfile.obj  lastcall.obj  desqview.obj  stacking.obj \
       cleanup.obj   sysopkey.obj  msgfind.obj   binlog.obj    protocol.obj \
       listfile.obj  ul.obj        tag.obj       sellang.obj   proboard.obj \
       nodelist.obj  online.obj    msgmove.obj   cdrom.obj     regis.obj    \
       mchat.obj     setarea.obj   usered.obj    deckey.obj    music.obj    \
       gif.obj       msgexprt.obj  help.obj      ega.obj       event.obj    \
       filearea.obj  msgarea.obj   timelog.obj   wordwrap.obj  showans.obj  \
       userset.obj   usage.obj     loadpex.obj   image.obj     postmsg.obj  \
       pexcall.obj   strvars.obj   userwin.obj   bulletin.obj  modem.obj    \
       execheck.obj  language.obj  fuzzy.obj     terminal.obj  squish.obj   \
       hudson.obj msgbase.obj mark.obj rip.obj jam.obj inpdate.obj tag_rw.obj

OBJS_NO_OVL = exec.obj fossil.obj io.obj menu.obj misc.obj timer.obj
LIBS    = \
 $(PB_LIB)\PBLIB_$(EXT).LIB \
 $(PB_LIB)\SQSH_$(EXT).LIB \
 $(PB_LIB)\TSLIB_$(EXT).LIB \
 $(PB_LIB)\TSWIN_$(EXT).LIB
INCLUDE_DIRS = $(BC_DIR)\INCLUDE $(PB_LIB)\TSLIB $(PB_LIB)\TSWIN $(PB_LIB) $(PB_LIB)\SQUISH\INCLUDE
CPPFLAGS = -I..
 
#----------------------------------------------------------------------------#

all: mc.cfg proboard.exe

help:
  @echo Usage: 
  @echo.
  @echo Make sure that BORLANDC\BIN is in your path then run:
  @echo MAKE all
  @echo.
  @echo To cleanup (delete) the OBJ and EXE files built and return the source code back
  @echo to a pristine state, run the following:
  @echo make clean

clean:
	-@del *.obj
	-@del proboard.exe
  -@del mc.cfg

# Build the non-overlay versions specially.
io.obj: io.cpp
  $(CC) @mc.cfg $(CPPFLAGS) -Y -c $?

menu.obj: menu.cpp
  $(CC) @mc.cfg $(CPPFLAGS) -Y -c $?

misc.obj: misc.cpp
  $(CC) @mc.cfg $(CPPFLAGS) -Y -c $?

timer.obj: timer.cpp
  $(CC) @mc.cfg $(CPPFLAGS) -Y -c $?

ProBoard.exe: $(OBJS_NO_OVL) $(OBJS) $(LIBS)
	$(TLINK) /c /x /L$(LIBDIR) @&&|
	c0l $(OBJS_NO_OVL) /o $(OBJS) /o-
$*
nul
emu mathl overlay cl $(LIBS) 
|

PBLIB_DIR = $(PB_LIB)\PBLIB
PBLIB_OBJS = $(PBLIB_DIR)\pb_lib.obj $(PBLIB_DIR)\lang.obj $(PBLIB_DIR)\user.obj

.\LIBS\PBLIB_L.LIB: $(PBLIB_OBJS)
  cd $(PB_LIB)
  -$(MAKE) all
  -cd ..\

TSLIB_DIR = $(PB_LIB)\TSLIB
.\LIBS\TSLIB_L.LIB:
  cd $(PB_LIB)
  -$(MAKE) all
  -cd ..\

TSWIN_DIR = $(PB_LIB)\TSWIN
.\LIBS\TSWIN_L.LIB:
  cd $(PB_LIB)
  -$(MAKE) all
  -cd ..\

SQSH_DIR = $(PB_LIB)\SQUISH\SRC
.\LIBS\SQSH_L.LIB:
  cd $(PB_LIB)
  -$(MAKE) all
  -cd ..\

!include ..\mc.mk
