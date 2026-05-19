#!/bin/bash
# 强行开启插件编译开关
echo 'CONFIG_PACKAGE_luci-app-quickfile=y' >> .config
echo 'CONFIG_PACKAGE_quickfile=y' >> .config
