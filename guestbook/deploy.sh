#!/bin/bash

kubectl apply -f guestbook-ui-deployment.yaml
kubectl apply -f guestbook-ui-svc.yaml
kubectl apply -f nodeport.yaml
kubectl apply -f propagationpolicy.yaml

kubectl apply -f guestbook-ui-svc-export.yaml
kubectl apply -f guestbook-ui-svc-export-propagationpolicy.yaml
kubectl apply -f guestbook-ui-svc-import.yaml
kubectl apply -f guestbook-ui-svc-import-propagationpolicy.yaml

echo "Done!"