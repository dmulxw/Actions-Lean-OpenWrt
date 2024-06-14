#!/bin/bash
#=============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# fw876/helloworld
# Uncomment the helloworld feed source if it's commented out
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source if it doesn't already exist
if ! grep -q "src-git helloworld https://github.com/dmulxw/helloworldopenwrt" feeds.conf.default; then
    echo 'src-git helloworld https://github.com/dmulxw/helloworldopenwrt' >>feeds.conf.default
fi

# Add a feed source
#https://github.com/dmulxw/helloworldopenwrt.git
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# Lienol/openwrt-package
# sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-package' feeds.conf.default
