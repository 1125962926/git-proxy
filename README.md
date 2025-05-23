# 一、使用 Watt Toolkit 代理 git clone

- (1) 将 Watt Toolkit 的 GitHub 加速模式 选择 系统代理模式

- (2) 查看代理 IP 和端口(设置)

- (3) 禁用 SSL 证书检查

```bash
git config --global http.sslverify false
```

- (4) 设置全局 HTTP 代理

```bash
git config --global http.proxy "http://127.0.0.1:26561"
git config --global https.proxy "https://127.0.0.1:26561"
```

- (*) 恢复设置

```bash
git config --global --unset http.proxy
git config --global --unset https.proxy
git config --global --unset http.sslverify
```

# 二、单独设置代理
## 为 GitHub 的 HTTPS 连接设置一个代理
表示仅对 GitHub 的 HTTPS 请求（https://github.com/...）启用代理，不影响其他域名（如 GitLab）。

#### 1 SOCKS5 代理
```bash
git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
```

#### 2 HTTPS 代理
```bash
git config --global http.https://github.com.proxy http://127.0.0.1:7890
```

#### 3 取消设置
```bash
git config --global --unset http.https://github.com.proxy
```

## 设置 HTTP 代理
```bash
git config --global http.proxy "http://127.0.0.1:7890"
git config --global https.proxy "https://127.0.0.1:7890"

git config --global --unset http.proxy
git config --global --unset https.proxy
```

## 设置 socks5 代理
```bash
git config --global http.proxy "socks5://127.0.0.1:1080"
git config --global https.proxy "socks5://127.0.0.1:1080"

git config --global --unset http.proxy
git config --global --unset https.proxy
```
