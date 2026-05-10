#!/bin/bash

kubectl run front-end-app --image=nginx --namespace=development --labels role=front-end --expose --port 80
kubectl run back-end-api-app --image=nginx --namespace=development --labels role=back-end-api --expose --port 80
kubectl run admin-front-end-app --image=nginx --namespace=development --labels role=admin-front-end --expose --port 80
kubectl run admin-back-end-api-app --image=nginx --namespace=development --labels role=admin-back-end-api --expose --port 80

# поды для теста
kubectl run test-front --image=alpine -n development --labels role=front-end
kubectl run test-admin-fromt --image=alpine -n development --labels role=admin-front-end