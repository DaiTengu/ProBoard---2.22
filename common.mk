###################################################################################
## Common defintions for Proboard


# If we don't know where BC 3.1 is installed, then pick where make.exe lives.
!if !$d(BC_DIR) 
BC_DIR   = $(MAKEDIR)\..
BC_BIN   = $(MAKEDIR)
!else
BC_BIN   = $(BC_DIR)\BIN
!endif

!if !$d(PB_LIB)
# default to .\pblib
PB_LIB   = .\LIBS
!endif

!if !$d(MODEL)
# Large, always large more likely
MODEL   = LARGE
EXT     = L
!endif

OVERLAY = 1
LIBDIR  = $(BC_DIR)\LIB
BCC     = $(BC_BIN)\bcc.exe
TASM    = $(BC_BIN)\tasm.exe
# Unclear why BCC make is braindead on these defaults (they use TASM not $(TASM))
CC      = $(BCC)
AS      = $(TASM)
TLINK   = $(BC_BIN)\tlink.exe

