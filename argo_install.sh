#!/bin/bash
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm install argocd argo/argo-cd --namespace argocd --create-namespace

