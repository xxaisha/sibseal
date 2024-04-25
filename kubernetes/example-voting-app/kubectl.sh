kubectl apply -f voting-app-deploy.yaml
kubectl apply -f voting-app-service.yaml
kubectl apply -f redis-deploy.yaml
kubectl apply -f redis-service.yaml
kubectl apply -f postgres-deploy.yaml
kubectl apply -f postgres-service.yaml
kubectl apply -f worker-app-deploy.yaml
kubectl apply -f result-app-deploy.yaml
kubectl apply -f result-app-service.yaml
kubectl get deployments,svc