#!/bin/sh
rm -r /var/lib/etcd
docker rmi `docker images -q` -f
apt remove -y docker.io kubelet kubeadm kubectl 
apt autoremove -y
