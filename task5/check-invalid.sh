#!/bin/bash

kubectl exec test-front -n development -- wget -qO- --timeout=2 http://admin-back-end-api-app

kubectl exec test-admin-fromt -n development -- wget -qO- --timeout=2 http://back-end-api-app