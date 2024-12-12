

### 一键登录接口：

```
/service-api/cas/callback?ticket=${key}&service=${service}
```

### 认证源需实现接口

入参：

* 位置：query 参数名：ticket
* 位置：query 参数名：service


出参：
```
{
    "status": true,
    "message": "登录成功",
    "userId": "唯一id",
    "avatar": "头像，可选",
    "showName": "展示名称，可选"
}
```

### 后台配置

在next-share后台配置，对接配置->cas登录回调

```
{"default":"认证源接口地址"}
```
