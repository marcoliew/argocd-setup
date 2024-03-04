#!/bin/bash
kubectl create namespace argocd
kubectl apply -f https://github.com/argoproj/argoproj-deployments/blob/master/argocd/kustomization.yaml
$SHELL