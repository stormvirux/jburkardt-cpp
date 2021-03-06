#!/bin/bash
#
cp tga_io.hpp /$HOME/include
#
g++ -c -g -I /$HOME/include tga_io.cpp >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling tga_io.cpp"
  exit
fi
rm compiler.txt
#
mv tga_io.o ~/libcpp/$ARCH/tga_io.o
#
echo "Library installed as ~/libcpp/$ARCH/tga_io.o"
