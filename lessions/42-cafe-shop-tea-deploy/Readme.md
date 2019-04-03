# 42
```bash

cd 42-cafe-shop-tea-deploy
kubectl apply -f .kube/
kubectl get deploy
kubectl get po
kubectl scale deployment.v1.apps/tea-deployment --replicas=5
kubectl describe deployments
kubectl scale deployment.v1.apps/tea-deployment --replicas=2
kubectl get services


kubectl delete ns cafe-shop
```