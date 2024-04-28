#!/bin/bash

# This is an email to authorize to Let's encrypt
LETS_ENCRYPT_EMAIL=

cat cert-manager-issuer.yaml \
    | sed s/{{LETS_ENCRYPT_EMAIL}}/$LETS_ENCRYPT_EMAIL/g \
    # | kubectl apply -f - # Uncomment this line to apply the object

# Type `kubectl delete ClusterIssuer cluster-issuer` to delete cluster issuer object
echo "\n" 

# Remember to set proper values to dockerconfig.json
# Remove whitespaces and convert your config to base64
DOCKER_CONFIG_JSON_BASE_64=$(cat dockerconfig.json | tr -d '\n \t' | base64 -w 0)

cat docker-config-json-secret.yaml \
    | sed s/{{DOCKER_CONFIG_JSON_BASE_64}}/$DOCKER_CONFIG_JSON_BASE_64/g \
    # | kubectl apply -f - # Uncomment this line to apply the object

# Type `kubectl delete secret regcred` to delete the secret
echo "\n" 