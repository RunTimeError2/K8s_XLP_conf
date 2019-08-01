#!/bin/sh
for i in istio-1.2.2/install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done
#kubectl apply -f istio-1.2.2/install/kubernetes/istio-demo-auth.yaml
kubectl apply -f istio-demo.yaml
echo 'Waiting for Istio to initialize...'
sleep 20s
kubectl delete meshpolicies.authentication.istio.io default

kubectl get pods -n istio-system
kubectl get svc -n istio-system
