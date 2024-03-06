#!/bin/bash
kubectl create namespace argocd
kubectl apply -f https://github.com/argoproj/argo-cd/blob/master/manifests/install.yaml
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/argocd-image-updater/stable/manifests/install.yaml
$SHELL