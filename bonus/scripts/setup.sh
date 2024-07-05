#!/bin/bash

## Install K3s

echo "Install K3S"

curl -ksfL https://get.k3s.io | INSTALL_K3S_EXEC="server" K3S_KUBECONFIG_MODE="644" sh -s - --flannel-iface eth1

## Deploy gitlab
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

kubectl create namespace gitlab

helm repo add gitlab https://charts.gitlab.io/

helm repo update

helm upgrade --install gitlab gitlab/gitlab --namespace gitlab --values ../confs/values.yaml


## Forward

kubectl port-forward svc/gitlab-webservice-default -n gitlab 80:8181 &

## Get Secret 

kubectl get secret -n gitlab gitlab-gitlab-initial-root-password -o jsonpath="{.data.password}" | base64 -d


## ArgoCD
echo "configure argocd"

kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl apply -f ./vagrant/config/application.yaml

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo

kubectl port-forward svc/argocd-server 8080:80 -n argocd --address='0.0.0.0'

## /etc/host => gitlab.gitlab.io

