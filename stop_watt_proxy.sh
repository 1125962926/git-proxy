#!/bin/bash

# 清除 proxy
./script/clear_http_proxy.sh

# 重置 SSL 证书检查
./script/sslverify.sh reset

echo "已重置 git proxy!"
