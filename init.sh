#!/usr/bin/env bash
sudo apt update -y
sudo apt install -y  gcc g++ binutils patch bzip2 flex bison make autoconf gettext texinfo unzip sharutils subversion libncurses5-dev ncurses-term zlib1g-dev gawk asciidoc libz-dev git
cd openwrt 
./scripts/feeds update -a
./scripts/feeds install -a
make -j2 V=s

