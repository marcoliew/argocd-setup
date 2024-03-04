#!/bin/bash
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
#kubectl port-forward svc/argocd-server -n argocd 8080:443
$SHELL