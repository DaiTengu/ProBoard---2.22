## Makefile for INSTALL

!include ..\common.mk

all: version.h

version.h: version.in ../version.mk
  ../tools/configur.exe ../version.mk version.in version.h

clean:
  -del version.h

