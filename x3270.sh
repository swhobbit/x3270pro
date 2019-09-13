#!/bin/sh
column=`expr $RANDOM % 1700`
row=`expr $RANDOM % 300`
x3270 -sb -once -geometry +${column}+${row} "$@" &
