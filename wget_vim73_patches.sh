#!/bin/bash

# Before execute this script to get all patches for vim 7.3,
# we might need to check if there is any new patch
# in http://ftp.vim.org/pub/vim/patches/7.3/

mkdir -p ./patches
cd ./patches

for i in {1..923}; do
suffix=$(printf "%0.3d" $i)
wget http://ftp.vim.org/pub/vim/patches/7.3/7.3.$suffix
done

cd ..

