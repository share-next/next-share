

### 1、CAS登录接口：

```
http://${next-share部署域名}:8000/service-api/cas/callback?ticket=${key}&service=${service}&clientId=${clientId}
```

| **位置** | **参数名** | **描述** |
|----------|------------|----------|
| query    | ticket     | 必填，业务方生成的凭证，用于验证用户身份。 |
| query    | service    | 选填，业务方自定义的参数，可根据需要传递特定服务标识。 |
| query    | clientId   | 选填，由 next-share 系统生成，用于支持多回调地址的场景，区分不同客户端回调，默认回调default地址 |

### 2、认证源需实现接口

#### URL

无限制

#### 方法
post

#### 入参

透传登录入参

#### 出参

| **字段名** | **类型**  | **描述**               |
|------------|-----------|------------------------|
| status     | Boolean   | 登录状态，`true` 表示成功 |
| message    | String    | 提示信息，如 "登录成功" |
| user_id     | String    | 用户唯一ID，注意：next会以 service + userId 作为唯一标识存储|
| avatar     | String    | 用户头像（可选）       |
| show_name   | String    | 用户展示名称（可选）   |


### 3、后台配置回调地址

在next-share后台配置，对接配置->cas登录回调

```
{"default":"认证源接口地址"}
```
