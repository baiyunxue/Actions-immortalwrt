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

# 自定义 IP地址
sed -i 's/192.168.1.1/192.168.10.1/g' openwrt/package/base-files/files/bin/config_generate

# 默认开启 WiFi
sed -i 's/disabled=1/disabled=0/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 自定义 SSID
sed -i 's/ssid=OpenWrt/ssid=immortalwrt/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 自定义主题
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
