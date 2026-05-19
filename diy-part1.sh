#!/bin/bash
#=================================================
# DIY script for OpenWrt compilation
#=================================================

# 1. 下载 luci-app-quickfile 前端界面
# 修正：下载到 package 目录（这样 OpenWrt 编译系统才能扫描到）
git clone https://github.com/sbwml/luci-app-quickfile package/luci-app-quickfile
git clone https://github.com/sbwml/quickfile package/quickfile

# 更新并安装 feeds
./scripts/feeds update -a
./scripts/feeds install -a
