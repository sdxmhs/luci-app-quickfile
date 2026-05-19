#!/bin/bash
# 确保脚本在项目根目录下执行
# 如果你在子目录运行，这一行会强行切到项目根目录
cd "$(dirname "$0")"

# 使用更稳妥的下载方式，直接用 git clone，并确保路径正确
# 注意：在 Actions 环境中，确保 package 文件夹存在
mkdir -p package/luci-app-quickfile
mkdir -p package/quickfile

git clone https://github.com/sbwml/luci-app-quickfile package/luci-app-quickfile --depth=1
git clone https://github.com/sbwml/quickfile package/quickfile --depth=1

# 重点：不要在脚本里运行 ./scripts/feeds，
# 把 feed 更新留给 .yml 工作流去做，因为工作流通常已经配置好了路径。
