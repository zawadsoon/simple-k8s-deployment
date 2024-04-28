#!/bin/bash

# This is an email to authorize to Let's encrypt
LETS_ENCRYPT_EMAIL=

cat cert-manager-issuer.yaml \
    | sed "s/{{LETS_ENCRYPT_EMAIL}}/$LETS_ENCRYPT_EMAIL/g" \
    # | kubectl apply -f - # Uncomment this line to apply the object

# Type `kubectl delete ClusterIssuer cluster-issuer` to delete cluster issuer object