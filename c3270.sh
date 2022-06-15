#!/bin/sh
if [ $# -lt 1 ] ; then
  name=$(basename $0)
  echo ${name} requires arguments for c3270, such as:
  echo ''
  echo "     " ${name} -secure tty.livingcomputers.org 24
  echo ''
  sleep 2
  exit 127
fi

if [ -n "${SSH_ORIGINAL_COMMAND}" ] ; then
  echo ERROR: ssh command "${SSH_ORIGINAL_COMMAND}" ignored.
  exit 22
fi

if [ -z "${TERM}" ] ; then
  echo ERROR: TERM does not exist in environment.
  exit 88
fi

lines=$(tput lines)
cols=$(tput cols)                  # tput columns should work but doesn't

if [ ${lines:?"ERROR: Cannot determine number of lines on terminal"} -ge 26 -a  \
    ${cols:?"ERROR: Cannot determine number of columns on terminal"} -ge 132 ] ; then
  model=5
elif [ ${lines} -ge 43 ] ; then
  model=4
elif [ ${lines} -ge 32 ] ; then
  model=3
elif [ ${lines} -ge 24 ] ; then
  model=2
else
  echo Screen must be at least 24 lines for 3270 emulation, but is only ${lines}  2>&1
  exit 99
fi

exec c3270 -model $model "$@"
