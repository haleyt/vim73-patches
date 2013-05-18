#!/bin/bash

PATH_HAVE_PATCHES=/work/github/vim73-patches/patches

# apply 7.3.001 ~ 7.3.429 patches for vim 7.3

for i in {1..195}; do
suffix=$(printf "%0.3d" $i)
patch -p2 < $PATH_HAVE_PATCHES/7.3.$suffix
done

for i in {196..230}; do
suffix=$(printf "%0.3d" $i)
patch -p3 < $PATH_HAVE_PATCHES/7.3.$suffix
done

for i in {231..429}; do
suffix=$(printf "%0.3d" $i)
patch -p2 < $PATH_HAVE_PATCHES/7.3.$suffix
done

