!include common.mk

all:
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

clean:
  cd libs
  $(MAKE) clean
  cd ..
  cd proboard
  $(MAKE) clean
  cd ..
  cd pbutil
  $(MAKE) clean
  cd ..
  cd procfg
  $(MAKE) clean
  cd ..
  cd convert
  $(MAKE) clean
  cd ..
