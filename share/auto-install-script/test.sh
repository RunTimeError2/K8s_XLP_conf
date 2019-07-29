#!/bin/sh
kubeadm init --apiserver-advertise-address=192.168.1.102 --pod-network-cidr=10.244.0.0/16
export KUBECONFIG=/etc/kubernetes/admin.conf
sleep 10s
kubectl apply -f kube-flannel.yml
sleep 20s
kubectl get pods -n kube-system
