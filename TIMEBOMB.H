#ifndef __TIME_BOMB_HEADER_H
#define __TIME_BOMB_HEADER_H


#define SOFTWARE_EXPIRE

#ifdef SOFTWARE_EXPIRE

  #define EXPIRE_YEAR  4000
  #define EXPIRE_MONTH 12
  #define EXPIRE_DAY   31

  #define PORT_VALUE   10

#else

  #define PORT_VALUE   -1

#endif


#endif  // __TIME_BOMB_HEADER_H
