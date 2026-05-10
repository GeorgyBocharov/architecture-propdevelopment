#!/bin/bash

# 1. front-end может общаться с back-end
kubectl exec test-front -n development -- wget -qO- --timeout=2 http://back-end-api-app

# 2. admin-front-end может общаться с admin-back-end
kubectl exec test-admin-fromt -n development -- wget -qO- --timeout=2 http://admin-back-end-api-app
