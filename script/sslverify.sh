#!/bin/bash

# 脚本功能：设置或取消 git 的全局 http.sslverify 配置
# 使用方法：
#   ./sslverify.sh disable    # 禁用 SSL 验证
#   ./sslverify.sh reset      # 重置 SSL 验证设置

if [ "$1" = "disable" ]; then
    git config --global http.sslverify false
    echo "已禁用全局 SSL 验证 (http.sslverify = false)"
elif [ "$1" = "reset" ]; then
    git config --global --unset http.sslverify
    echo "已重置全局 SSL 验证设置"
else
    echo "用法: $0 [disable|reset]"
    echo "  disable - 禁用 SSL 验证"
    echo "  reset   - 重置 SSL 验证设置"
    exit 1
fi
