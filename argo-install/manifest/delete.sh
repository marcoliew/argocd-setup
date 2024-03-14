#!/bin/bash
kubectl delete -n argocd -f https://raw.githubusercontent.com/argoproj-labs/argocd-image-updater/stable/manifests/install.yaml
kubectl delete -n argocd -f https://github.com/argoproj/argo-cd/blob/master/manifests/install.yaml
$SHELL