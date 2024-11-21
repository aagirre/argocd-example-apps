#!/bin/bash

kubectl delete -f guestbook-ui-deployment.yaml
kubectl delete -f guestbook-ui-svc.yaml
kubectl delete -f nodeport.yaml
kubectl delete -f propagationpolicy.yaml

kubectl delete -f guestbook-ui-svc-export.yaml
kubectl delete -f guestbook-ui-svc-export-propagationpolicy.yaml
kubectl delete -f guestbook-ui-svc-import.yaml
kubectl delete -f guestbook-ui-svc-import-propagationpolicy.yaml

#kubectl delete -f nodeport-export.yaml
#kubectl delete -f nodeport-export-propagationpolicy.yaml
#kubectl delete -f nodeport-import.yaml
#kubectl delete -f nodeport-import-propagationpolicy.yaml

echo "Done!"