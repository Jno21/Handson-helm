# Handson-helm

This is an introduction to Helm.

:warning: **Skip the step you have done**

# Pre-requisites

## Install Gcloud

- **Mac OS X**: [Official documentation](https://cloud.google.com/sdk/docs/quickstart-macos)
- **Mac OS Brew**: `brew install google-cloud-sdk`

- **Linux**: [Official documentation](https://cloud.google.com/sdk/docs/quickstart-linux)
- **Debian and Ubuntu**: [Official documentation](https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu)
- **RedHat and Centos**: [Official documentation](https://cloud.google.com/sdk/docs/quickstart-redhat-centos)

### Login to Gcloud:

`gcloud init`

Fill with this:

`project: sandbox-wescale`

`region: europe-west1`

`zone: europe-west1-d`

## Install kubectl

- **Mac OS Brew**: `brew install kubernetes-cli`
- **Gcloud**: `gcloud components install kubectl`

### Accept API
`gcloud auth application-default login`

### Connect to cluster
`gcloud container clusters get-credentials handson-helm-wescale --zone europe-west1-d --project sandbox-wescale`

Verify it is working:
`kubectl get ns`
>It should display all the namespaces available on the cluster. If it is not working come see me !

### Install helm
- **Mac OS Brew**: `brew install kubernetes-helm`
- **Others**: [Official documentation](https://docs.helm.sh/using_helm/#installing-helm)

### Let's go

**your-username**: `1st letter of first name + last name`
Example: `bpetit`

Init helm with this script: `./helm-init.sh <your-username>`

Do this on every shell you use (Or add it to your `.bashrc` or `.zshrc`):

`export TILLER_NAMESPACE=<your-username>`
> If you forgot to do this shit I am going to hit you with a stick.

# Helm cheat sheet:

`helm install <name-of-app>`
> Install the application

`helm install --name=<deployment-name> <name-of-app>`
> Install the application with the release-name specified

`helm upgrade <release-name> <name-of-app>`
> Upgrade the release 'release-name' of the application

`helm delete <release-name>`
> Delete the application link to this release

`helm ls`
> List all the application installed in your cluster

`helm create <my-app>`
> Create Helm chart

`helm version`
> See what version is installed locally and in the cluster





