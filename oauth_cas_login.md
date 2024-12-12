

### 1、CAS登录接口：

```
http://${next-share部署域名}:8000/service-api/cas/callback?ticket=${key}&service=${service}
```

### 2、认证源需实现接口

#### URL

无限制

#### 方法
get

#### 入参

| **位置** | **参数名** | **描述** |
|----------|------------|----------|
| query    | ticket     | 服务票据 (Service Ticket) |
| query    | service    | 目标服务地址 |

#### 出参

| **字段名** | **类型**  | **描述**               |
|------------|-----------|------------------------|
| status     | Boolean   | 登录状态，`true` 表示成功 |
| message    | String    | 提示信息，如 "登录成功" |
| userId     | String    | 用户唯一ID，注意：next会以 service + userId 作为唯一标识存储|
| avatar     | String    | 用户头像（可选）       |
| showName   | String    | 用户展示名称（可选）   |


### 3、后台配置回调地址

在next-share后台配置，对接配置->cas登录回调

```
{"default":"认证源接口地址"}
```
