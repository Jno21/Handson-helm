# TP 1

## Pre-requisites

- Create an account on [Datadog](https://app.datadoghq.com)
- Get your [API key](https://app.datadoghq.com/account/settings#api)

## Helm

- Create a file to edit the configuration of datadog: `datadog.yaml`
- Put this inside:
```
rbac:
  ## If true, create & use RBAC resources
  create: false

  ## Ignored if rbac.create is true
  serviceAccountName: datadog-agent

tolerations: []

kube-state-metrics:
  rbac:
    create: false

    ## Ignored if rbac.create is true
    serviceAccountName: kube-state-metrics
```

- Install Datadog with helm: `helm install stable/datadog -f datadog.yaml --version 1.0.3`
> You should choose your release-name ! Check the readme with cheat sheet and be creative !
- It is not going to work ! The output explain why ! I let you find how to correct this.
> There is 2 method available to do this.
- Install the integration (Kubernetes on datadog)[https://app.datadoghq.com/account/settings#integrations]
- Go check if you get data on your [Dashboard](https://app.datadoghq.com/dashboard/lists) Kubernetes.
- Waaahhoouuu magic is happening.

