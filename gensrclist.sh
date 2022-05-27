#!/bin/sh

DIRLIST=". Source Source/Metadata Source/FreeImageToolkit Source/LibJPEG Source/LibPNG Source/LibTIFF4 Source/ZLib Source/LibOpenJPEG Source/OpenEXR Source/OpenEXR/Half Source/OpenEXR/Iex Source/OpenEXR/IlmImf Source/OpenEXR/IlmThread Source/OpenEXR/Imath Source/OpenEXR/IexMath Source/LibRawLite Source/LibRawLite/dcraw Source/LibRawLite/internal Source/LibRawLite/libraw Source/LibRawLite/src Source/LibWebP Source/LibJXR Source/LibJXR/common/include Source/LibJXR/image/sys Source/LibJXR/jxrgluelib"

echo "VER_MAJOR = 3" > Makefile.srcs
echo "VER_MINOR = 19.0" >> Makefile.srcs

echo -n "SRCS = " >> Makefile.srcs
find Source -name '*.c' -or -name '*.cpp' -not -name 'JPEGTransform.cpp' | LC_ALL=C sort | xargs echo -n >> Makefile.srcs
echo >> Makefile.srcs

echo -n "INCLS = " >> Makefile.srcs
find Source -name '*.h' | LC_ALL=C sort | xargs echo -n >> Makefile.srcs
echo >> Makefile.srcs

echo -n "INCLUDE =" >> Makefile.srcs
for DIR in $DIRLIST; do
	echo -n " -I$DIR" >> Makefile.srcs
done
echo >> Makefile.srcs

