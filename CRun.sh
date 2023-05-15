#!/bin/bash
if [ $2 -eq 0 ]; #Not Update
then sudo gcc -o $1-bin $1.c `pkg-config --libs --cflags gtk+-3.0` -export-dynamic -D _GNU_SOURCE -D Update && sudo ./$1-bin
else sudo gcc -o $1-bin $1.c `pkg-config --libs --cflags gtk+-3.0` -export-dynamic -D _GNU_SOURCE && sudo ./$1-bin
fi
