#!/bin/bash

PATH_HAVE_PATCHES=/work/github/vim73-patches/patches

# apply 7.3.430 ~ 7.3.923 patches for vim 7.3
for i in {430..923}; do

if [ $i -eq "613" ] # ignore 7.3.613, because it causes build break
then
	continue;
fi

suffix=$(printf "%0.3d" $i)
patch -p2 < $PATH_HAVE_PATCHES/7.3.$suffix

done

