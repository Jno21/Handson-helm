# TP2

## Pre-requisites

- Create a new **public** repository on Github
- Work inside this repository

## Create a new chart !

- Create a new chart: `helm create supermario`
- Edit the default values in values.yaml to use the container: `eu.gcr.io/sandbox-wescale/mariohtml5:latest`
- Change the service type to use `LoadBalancer`
- Launch it !
> I let you dig a little on this one, we are at WeScale not at the elementary school
- Check your deployment: `kubectl get deployment`
- Check your service: `kubectl get service`, when the EXTERNAL_IP is created go check on your browser
- OMFGGGG we can play for the rest of the Handson !!!! (This is a joke, let's move on)
- Remove this app from your cluster: `helm delete <your-release-name>`

## Create a Helm repository for our new chart

- Package your app to create a release version of our Chart: `helm package supermario`
- Create a directory docs inside your Github repository: `mkdir docs`
- Move the release to the docs directory `mv supermario-0.1.0.tgz docs`
- Add -> Commit -> Push to master everything
- Activate your [Github page](https://github.com/Jno21/helm-repo/settings) by selecting **master branch /docs folder**
- Create an index for helm: `helm repo index docs --url https://<your-username>.github.com/<your-repo>`
- Git add -> commit -> push
- Now let's try to use our repository with helm: `helm repo add supermario https://<your-username>.github.io/<your-repo>/`
- Let's see the list of our helm repos: `helm repo list`
- You can now install directly from your helm repository: `helm install supermario`

This allow you to update the version of your chart and create new release easily and be able to downgrade fast if needed.

## Create a new version of the Chart.

I want a new version of the Chart. To do this edit your current Chart with:
- Delete the `ingress.yaml` file and remove the vars link to it in `values.yaml`.
- Create a new environment `dev.yaml` with the `tag: dev`.
- Create a new release with the version `1.0.0`
- Add it to your docs and update the index.