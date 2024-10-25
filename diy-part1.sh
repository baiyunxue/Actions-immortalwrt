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
#src-git-full packages https://github.com/jjm2473/packages.git;istoreos-22.03
#src-git-full luci https://github.com/jjm2473/luci.git;istoreos-22.03
#src-git-full routing https://git.openwrt.org/feed/routing.git;openwrt-22.03
#src-git-full telephony https://git.openwrt.org/feed/telephony.git;openwrt-22.03
# istore
echo 'src-git store https://github.com/linkease/istore.git;main' >> feeds.conf.default
# argon, etc.
echo 'src-git third https://github.com/jjm2473/openwrt-third.git;main' >> feeds.conf.default

#sed -i '$a src-git store https://istore.linkease.com/repo/all/store.git' feeds.conf.default
#svn co https://github.com/animegasan/luci-app-quickstart package/files/luci-app-quickstart
#echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
