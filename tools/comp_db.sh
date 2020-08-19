#!/bin/bash

echo "Compile debug... (NO -DLOCAL)"
g++ -Wall -Wshift-overflow=2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -o prog $1.cpp

