## runner
gitlab-runner 是 gitlab 提供到 cicd 构建机（类似 jenkins），安装 runner 的时候注意 runner 与 gitlab 版本的对应关系。

```shell
# 查看版本关系
helm search repo -l kubeclub/gitlab-runner
```

```shell
NAME                    CHART VERSION   APP VERSION     DESCRIPTION  
kubeclub/gitlab-runner  0.42.1          15.1.0          GitLab Runner
```

[gitlab runner 官方文档](https://docs.gitlab.com/runner/install/kubernetes.htmls)

## 部署
> 推荐使用 kubeclub 仓库提供的 runner 包，对一些参数有做优化

注意事项：
输入 runner 中的 tags 规定：

- 开发：dev
- 测试：test
- 预生产：pre
- 生产：prod

```
helm install --dry-run --debug \
--set runners.imagePullPolicy="if-not-present" \
--set gitlabUrl="http://git.kubeclub.com" \
--set runnerRegistrationToken="xxx" \
--set runners.tags="dev" \
--set runners.namespace="dev" \
runner-dev kubeclub/gitlab-runner --version 0.42.1 -n a
```