#!/bin/bash
gcc --std=c99 -Wall -c src/ineedit.c -o ineedit.o
gcc --std=c99 -Wall -c src/main.c -o main.o
gcc --std=c99 -Wall $(pkg-config --cflags --libs raylib) -lm ineedit.o main.o -obootz

echo compilation complete
