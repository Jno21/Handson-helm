#!/usr/bin/env zsh

set -e

if [ -z "$1" ]; then
  echo "Please input your username."
  exit 1
fi

user=$1

kubectl config set-context "$(kubectl config current-context)" --namespace $user
helm init --service-account tiller-$user --tiller-namespace $user
helm repo update