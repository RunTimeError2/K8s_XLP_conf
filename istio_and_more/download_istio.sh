#!/bin/sh
curl -L https://git.io/getLatestIstio | ISTIO_VERSION=1.2.2 sh -
export PATH=$PWD/istio-1.2.2/bin:$PATH
