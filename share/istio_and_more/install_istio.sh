#!/bin/sh
for i in istio-1.2.2/install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done
kubectl apply -f install/kubernetes/istio-demo.yaml
#kubectl apply -f install/kubernetes/istio-demo-auth.yaml
kubectl get pods -n istio-system
kubectl get svc -n istio-system
