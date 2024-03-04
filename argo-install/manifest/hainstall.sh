#!/bin/bash
kubectl create namespace argocd
kubectl -f https://github.com/argoproj/argo-cd/blob/master/manifests/ha/install.yaml
$SHELL