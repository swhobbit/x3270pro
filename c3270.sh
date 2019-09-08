#!/bin/sh
if [ $# -lt 1 ] ; then
  name=`basename $0`
  echo ${name} requires arguments for c3270, such as:
  echo ''
  echo "     " ${name} -secure tty.livingcomputers.org 24
  echo ''
  sleep 2
  exit 127
fi

lines=`tput lines`
cols=`tput cols`                  # tput columns should work but doesn't
if [ ${lines} -ge 26 -a ${cols} -ge 132  ] ; then
  model=5
elif [ ${lines} -ge 43 ] ; then
  model=4
elif [ ${lines} -ge 32 ] ; then  
  model=3
elif [ ${lines} -ge 24 ] ; then  
  model=2
else  
  echo Screen must be at least 24 lines for 3270 emulation, but is only ${lines}  2>&1 
  model=
  exit 99
fi
for command in echo exec ; do 
        SHELL=/usr/bin/false ${command} c3270 -model $model "$@"
        sleep 2
done 
