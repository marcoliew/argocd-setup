#!/bin/bash
kubectl create namespace argocd
kubectl apply -f https://github.com/argoproj/argo-cd/blob/master/manifests/install.yaml
$SHELL