#!/bin/bash
#=============================================================
# Copyright (c) 2021 baiyunxue
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/baiyunxue/Compile-LEDE
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (Before Update feeds)
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source{自定义app} 
#git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
#git clone https://dl.openwrt.ai/packages-23.05/aarch64_cortex-a53/kiddin9 filse/kiddin9
# istore
#sed -i '$a src-git store https://github.com/linkease/istore.git;main' feeds.conf.default
# argon, etc.
#sed -i '$a src-git third https://github.com/jjm2473/openwrt-third.git;main' feeds.conf.default

#sed -i '$a src-git store https://istore.linkease.com/repo/all/store.git' feeds.conf.default
#svn co https://github.com/animegasan/luci-app-quickstart package/files/luci-app-quickstart
#echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
