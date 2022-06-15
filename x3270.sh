#!/usr/bin/env bash
column=`expr $RANDOM % 1700`
row=`expr $RANDOM % 300`
daemon -- x3270 -activeicon -once -geometry +${column}+${row} "$@"
