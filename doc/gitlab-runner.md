## 部署
输入 gitlab 到地址、registertoken、tags,其中 tags 规定：

- 开发：dev
- 测试：test
- 预生产：pre
- 生产：prod

```
helm upgrade --install \
--set runners.imagePullPolicy="if-not-present" \
--set gitlabUrl="http://git.kubeclub.com" \
--set runnerRegistrationToken="xxx" \
--set runners.tags="dev" \
--set runners.namespace="dev" \
runner-dev kubeclub/gitlab-runner -n devops
```