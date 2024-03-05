#!/bin/bash
kubectl apply -f ./argocd-cicd-setup
kubectl apply -f ./argocd-cicd-setup/dev/namespace.yaml
kubectl apply -f ./argocd-cicd-setup/dev/
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
$SHELL