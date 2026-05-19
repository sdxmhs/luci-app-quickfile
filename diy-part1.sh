#!/bin/bash

# 使用 feeds 添加源，这种方式由 OpenWrt 编译系统统一管理，会自动处理认证
# 这样就不会出现 "could not read Username" 的权限错误了
echo 'src-git quickfile https://github.com/sbwml/luci-app-quickfile' >> feeds.conf.default
echo 'src-git quickfile_core https://github.com/sbwml/quickfile' >> feeds.conf.default

# 更新 feeds (会自动下载上面定义的地址)
./scripts/feeds update -a
# 安装 feeds
./scripts/feeds install -a
