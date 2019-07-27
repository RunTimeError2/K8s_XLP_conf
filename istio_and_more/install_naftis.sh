#!/bin/sh
kubectl create namespace naftis
kubectl apply -n naftis -f naftis/mysql.yaml
sleep 10s
kubectl apply -n naftis -f naftis/naftis.yaml