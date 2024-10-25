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
src-include defaults feeds.conf.default
src-git third_party https://github.com/linkease/istore-packages.git;main >> feeds.conf.default
src-git diskman https://github.com/jjm2473/luci-app-diskman.git;dev >> feeds.conf.default
src-git oaf https://github.com/jjm2473/OpenAppFilter.git;dev4 >> feeds.conf.default
src-git linkease_nas https://github.com/linkease/nas-packages.git;master >> feeds.conf.default
src-git linkease_nas_luci https://github.com/linkease/nas-packages-luci.git;main >> feeds.conf.default
src-git jjm2473_apps https://github.com/jjm2473/openwrt-apps.git;main >> feeds.conf.default

#sed -i '$a src-git store https://istore.linkease.com/repo/all/store.git' feeds.conf.default
#svn co https://github.com/animegasan/luci-app-quickstart package/files/luci-app-quickstart
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
