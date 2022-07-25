#!/bin/bash
set -e; #exit if found any error
kubectl get cm aws-auth -n kube-system -o yaml > aws-auth-cm.yaml
kubectl get cm kube-proxy -n kube-system -o yaml > kube-proxy-cm.yaml
kubectl get cm kube-proxy-config -n kube-system -o yaml > kube-proxy-config-cm.yaml
kubectl get cm coredns -n kube-system -o yaml > coredns-cm.yaml
kubectl get deploy coredns -n kube-system -o yaml > coredns-deploy.yaml
kubectl get ds aws-node -n kube-system -o yaml > aws-node-ds.yaml
kubectl get ds kube-proxy -n kube-system -o yaml > kube-proxy-ds.yaml
