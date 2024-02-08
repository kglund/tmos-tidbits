#!/bin/bash

#takes the argument of one string and lets you know what irules contain that string
tmsh list ltm rule | egrep "ltm rule|$1" | grep -B1 "$1" | grep "ltm rule" | awk '{print $3}'
