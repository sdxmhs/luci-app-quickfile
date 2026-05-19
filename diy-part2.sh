#!/bin/bash
#=================================================
# DIY script for OpenWrt compilation
#=================================================

# 1. 下载 luci-app-quickfile 前端界面
git clone https://github.com/sbwml/luci-app-quickfile package/luci-app-quickfile

# 2. 下载 quickfile 后端核心 (必须，否则插件无法工作)
git clone https://github.com/sbwml/quickfile package/quickfile

# 3. 更新并安装 feeds（确保系统能识别新下载的包）
./scripts/feeds update -a
./scripts/feeds install -a
