 
mc.cfg: MAKEFILE
  echo -ml -X > mc.cfg
  echo -I$(BC_DIR)\INCLUDE >>mc.cfg
  echo -I$(PB_LIB)\TSLIB  >>mc.cfg
  echo -I$(PB_LIB)\TSWIN  >>mc.cfg
  echo -I$(PB_LIB)\PBLIB  >>mc.cfg
  echo -I$(PB_LIB)\SQUISH\INCLUDE >>mc.cfg
 
