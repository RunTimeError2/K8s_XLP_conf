#!/bin/sh
wget https://get.helm.sh/helm-v3.0.0-alpha.2-linux-amd64.tar.gz
tar -xzvf helm-v3.0.0-alpha.2-linux-amd64.tar.gz
mv linux-amd64 helm-v3.0.0
cp helm-v3.0.0/helm /usr/bin
#helm init
helm init --stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts
