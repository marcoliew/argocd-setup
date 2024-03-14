#!/bin/bash
kubectl create namespace argocd
kubectl apply -n argocd -f install.yaml #https://github.com/argoproj/argo-cd/blob/master/manifests/install.yaml
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/argocd-image-updater/stable/manifests/install.yaml
$SHELL