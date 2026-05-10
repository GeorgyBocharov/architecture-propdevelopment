#!/bin/bash

kubectl create serviceaccount admin -n kube-system

# 1. Создаем namespace development (если еще не существует)
kubectl create namespace development 2>/dev/null || echo "Namespace development уже существует"
# 2. Создаем ServiceAccount developer
kubectl create serviceaccount developer -n development
# 3. Создаем ServiceAccount developer
kubectl create serviceaccount manager -n development