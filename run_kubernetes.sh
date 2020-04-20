#!/usr/bin/env bash

dockerpath="khoatek/appdemo"

# Run in Docker Hub container with kubernetes
kubectl run appdemo\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=appdemo
# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward appdemo 8000:80