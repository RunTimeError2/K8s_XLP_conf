#!/bin/sh
# You should download istio (in folder istio-1.2.2) first
kubectl label namespace default istio-injection=enabled
kubectl apply -f istio-1.2.2/samples/bookinfo/platform/kube/bookinfo.yaml
echo "Validating installation using kube exec..."
kubectl exec -it $(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}') -c ratings -- curl productpage:9080/productpage | grep -o "<title>.*</title>"
kubectl apply -f istio-1.2.2/samples/bookinfo/networking/bookinfo-gateway.yaml
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
export INGRESS_HOST=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath='{.items[0].status.hostIP}')
export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT
echo "Validating installation directly using curl..."
curl -s http://${GATEWAY_URL}/productpage | grep -o "<title>.*</title>"
kubectl apply -f samples/bookinfo/networking/destination-rule-all.yaml
echo "Installation completed. Visit your bookinfo page with URL http://$GATEWAY_URL/productpage"
