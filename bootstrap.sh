#!/bin/bash
kind create cluster --config cluster.yml &&
cd .infrastructure/
kubectl apply -f namespace.yml &&

kubectl apply -f nodeport.yml -n todoapp &&

kubectl apply -f pv.yml &&
kubectl apply -f pvc.yml &&

kubectl apply -f configMap.yml -n todoapp &&
kubectl apply -f secret.yml -n todoapp &&

kubectl apply -f deployment.yml -n todoapp &&
kubectl apply -f hpa.yml -n todoapp
