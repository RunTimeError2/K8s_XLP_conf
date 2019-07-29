#!/bin/sh
echo "This script opens nodePorts for Naftis and Istio (Prometheus & Grafana), please make sure you already have Istio and Naftis installed."
kubectl apply -f istio-demo.yaml
kubectl apply -f naftis.yaml
