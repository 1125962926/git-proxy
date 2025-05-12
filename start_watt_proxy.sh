#!/bin/bash

PORT=26561


if [ "$1" = "http" ]; then
	git config --global http.proxy "http://127.0.0.1:${PORT}"
	git config --global https.proxy "https://127.0.0.1:${PORT}"
	echo "已设置 HTTP/HTTPS 代理为 127.0.0.1:${PORT}"
elif [ "$1" = "socks5" ]; then
	git config --global http.proxy "socks5://127.0.0.1:${PORT}"
	git config --global https.proxy "socks5://127.0.0.1:${PORT}"
	 echo "已设置 SOCKS5 代理为 127.0.0.1:${PORT}"
else
    echo "用法: $0 [http|socks5]"
    echo "  http    - 设置 HTTP/HTTPS 代理"
    echo "  socks5  - 设置 SOCKS5 代理"
    exit 1
fi

# 禁用 SSL 证书检查
./script/sslverify.sh disable
