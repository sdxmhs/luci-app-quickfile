#!/bin/bash
# 只向 feeds.conf.default 追加内容
echo 'src-git quickfile https://github.com/sbwml/luci-app-quickfile' >> feeds.conf.default
echo 'src-git quickfile_core https://github.com/sbwml/quickfile' >> feeds.conf.default
