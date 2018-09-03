# TP3

## Install an helm plugin

Let's install a plugin to helm to be able to see the diff between an upgrade, that could be very useful !

- `helm plugin install https://github.com/databus23/helm-diff --version master`
- Change your `values.yaml` inside your **supermario** repository to replace `resources: {}` by
```
resources:
  limits:
    cpu: 100m
    memory: 128Mi
  requests:
    cpu: 100m
    memory: 128Mi
```
- Let's simulate an upgrade with helm diff: `helm diff upgrade <your-release> supermario`
> You can find the release name by using: `helm ls`

You can check the list of plugin available [here](https://github.com/helm/helm/blob/master/docs/related.md#helm-plugins).
There is plenty of useful plugin to improve your workflow and add features to helm.