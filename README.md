## [hotwheel](https://kubeclub.github.io/hotwheel/)
> 云原生研发自运维平台


![hotwheel](http://kube-portal.oss-cn-shenzhen.aliyuncs.com/uploads/20220524/a198caf3b2456d9f02ec302f9e7cb1ca.png)

[介绍视频](https://www.bilibili.com/video/BV1WR4y1w7R8/)

## 快速开始
1. 添加 helm 仓库
```
helm repo add kubeclub  https://kubeclub.github.io/hotwheel/
```
2. 更新 charts 仓库
```shell
helm repo update
```
3. 下载相关依赖
```shell
helm dependency update
```
4. 部署
```shell
helm upgrade -n devops --install my-release \
     --set config.app_backend_url='backend.kubeclub.cn' \
     --set config.app_ui_url='hotwheel.kubeclub.cn' \
     --set config.ldap.urls='ldap://xxx:389' \
     --set config.ldap.username='' \
     --set config.ldap.password='' \
     --set config.ldap.base='dc=kubeclub,dc=com' \
     kubeclub/hotwheel
```

## 功能列表
- 构建
- 部署
- 质量门禁
- 统计度量
- 消息通知
- 代码 review
- 审批流程
- 容器登录（服务都是容器化部署）
  - 容器文件自由上下传
  - 集成 arthas 调试工具  

## 架构图

![服务说明](http://kube-portal.oss-cn-shenzhen.aliyuncs.com/uploads/20220524/1c108f5744d6e8caac9270af8df7a19c.png)
![流程图](http://kube-portal.oss-cn-shenzhen.aliyuncs.com/uploads/20220524/7f25bcad35ba193f3d12809ff611cb51.png)
