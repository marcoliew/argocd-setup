#!/bin/bash
kubectl apply -f ./argocd-cicd-setup
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
$SHELL