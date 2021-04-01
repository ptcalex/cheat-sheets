
# nodes and services
kubectl get nodes
kubectl get nodes -o wide
kubectl get services -o wide


# namespaces are used to divide a cluster into multiple virtual clusters
kubectl get services -o wide --all-namespaces


# deployments
kubectl create deployment nginx --image=nginx
kubectl get deployments


# pods (created by deployments)
kubectl get pods
kubectl get pods -o wide

# scale deployments
kubectl scale --replicas=3 deployments/nginx






