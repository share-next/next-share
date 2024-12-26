# next-share
ChatGPT镜像站，对接ChatGPT官网全部功能，包含完整用户、订阅、支付、无感换车等功能

## 功能简介

- [x] 用户体系：登录、注册、激活码登录、找回密码等
- [x] 订阅体系：多版本订阅、周/月/季/年多周期订阅、账号类型限制、模型次数限制
- [x] 在线支付：微信、支付宝、虎皮椒，其他支付方式接入中
- [x] 号池管理：批量添加、批量导出
- [x] 对话相关：聊天记录存储、无感&选车双模式支持
- [x] 集成对接：对话前后回调、oauth登录、管理端接口api开发
- [x] 支持镜像、面板不同域名、主备网关切换
- [x] 支持模型映射，可将4o映射到gpts，临时提高模型智商
- [ ] 免登录体验对话
- [ ] 同时在线设备限制

## 联系我们

<img width="200" alt="image" src="https://github.com/user-attachments/assets/4623c5fd-33f1-4bed-8669-09388b625c16">

加群或者客服vx: `xhs10121`


## 在线体验

### 面板端

地址：https://next-demo.closeoai.com

```
账号密码：test@qq.com / 123
```
### 管理端

地址：https://next-demo.closeoai.com/admin

```
账号密码：admin / 123
```
## 部署
### 1.一键部署
```bash
curl -sSfL https://raw.githubusercontent.com/share-next/next-share/main/quick-install.sh | bash
```
 http://localhost:8000/admin
### 2.登录管理端

http://ip:8000/admin

默认账号密码：admin / 123456

### 3.修改配置
| 配置项  | 说明 |
| ------------- | ------------- |
| 系统设置 -> 基本设置 -> 面板地址 | 如：https://next-demo.closeoai.com 或 http:ip:8000 |
| 系统设置 -> 授权管理 -> 授权码 | 联系客服获取 |


## 功能截图

### 用户端



| 选车  | 无感 |
| ------------- | ------------- |
| <img width="1486" alt="image" src="https://github.com/user-attachments/assets/8d659d01-a1c9-41f9-ac39-a0587376560d"> | <img width="1724" alt="image" src="https://github.com/user-attachments/assets/393c668e-0e03-4762-bc47-81dce49c99b3" /> |

| 登录/注册  | 在线支付 |
| ------------- | ------------- |
| <img width="1486" alt="image" src="https://github.com/user-attachments/assets/ba145358-45a0-4d22-82b3-5c7a9e15e806">| <img width="1724" alt="image" src="https://github.com/user-attachments/assets/20b13e06-c0e2-404c-a465-b1547c925c1f"> |

### 管理端

### 基本管理（功能持续迭代ing
| 首页  | 号池管理 |
| ------------- | ------------- |
|<img width="1529" alt="image" src="https://github.com/user-attachments/assets/3fc8a414-57c4-40f4-b5f0-c5b634bff43e">|<<img width="1508" alt="image" src="https://github.com/user-attachments/assets/33d6910f-27ab-47cb-a7a1-491ce24bb69f">|

| 用户管理  | 订单管理 |
| ------------- | ------------- |
|<img width="1520" alt="image" src="https://github.com/user-attachments/assets/d51be8fa-f7bf-4397-af09-f46a5af7038e">|<img width="1510" alt="image" src="https://github.com/user-attachments/assets/768e22d5-3570-4e9e-a5a1-7ef74f8743c9">|

#### 系统配置

| part  | part | part |
| ------------- | ------------- | ------------- |
| <img width="369" alt="image" src="https://github.com/user-attachments/assets/28437d24-f06c-45bb-8391-d172e3de425f">| <img width="376" alt="image" src="https://github.com/user-attachments/assets/f7ecf5bb-417c-4136-baaa-180f4c3bda38">|<img width="388" alt="image" src="https://github.com/user-attachments/assets/3268ae47-f5a9-4a01-a9ec-337db7ff85ff">|
|<img width="387" alt="image" src="https://github.com/user-attachments/assets/3e600ce4-a17f-4f9b-9577-dff380d72442">|<img width="389" alt="image" src="https://github.com/user-attachments/assets/ee2a60b6-80e3-41a0-9c78-28884456190d">|<img width="376" alt="image" src="https://github.com/user-attachments/assets/26f770b4-ddf7-4f4d-9efd-430c36342e37">|


