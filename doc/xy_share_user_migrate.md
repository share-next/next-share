# xy原版shre用户体系对接

## 对接逻辑

站长完成配置后，引导用户在新平台注册账号，并引导其在右上角点击激活码兑换，并输入老系统token，完成用户对接。

如用户为plus用户，则会按照其剩余时长自动订阅后台设置的权益。

注意：
1. 为一次性对接，老系统后续增加时长，不会自动同步到新系统
2. 不支持聊天记录同步

## 配置修改

config.yaml文件，database节点后增加cool数据库配置

完整配置

```
database:
  logger:
    path: "./logs"
    file: "sql-{Y-m-d}.log" # 日志文件格式。默认为"{Y-m-d}.log"
    level: "all"
    stdout: true
    rotateSize: "300M"
    RotateBackupLimit: 10
    rotateBackupExpire: "7d"
  default: # 数据源名称,当不指定数据源时 default 为默认数据源
    type: "mysql" # 数据库类型
    host: "127.0.0.1" # 数据库地址
    port: "3306" # 数据库端口
    user: "root" # 数据库用户名
    pass: "123456" # 数据库密码
    name: "share_server" # 数据库名称
    charset: "utf8mb4" # 数据库编码
    timezone: "Asia/Shanghai" # 数据库时区
    debug: true # 是否开启调试模式，开启后会打印SQL日志
  cool: # 数据源名称,当不指定数据源时 default 为默认数据源
    type: "mysql" # 数据库类型
    host: "127.0.0.1" # 数据库地址
    port: "3306" # 数据库端口
    user: "root" # 数据库用户名
    pass: "123456" # 数据库密码
    name: "cool" # 数据库名称
    charset: "utf8mb4" # 数据库编码
    timezone: "Asia/Shanghai" # 数据库时区
#    debug: true # 是否开启调试模式，开启后会打印SQL日志
```

## 后台管理

系统配置 -> 系统迁移，打开三方激活码开关，配置订阅id
