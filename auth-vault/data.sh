#!bin/bash

export VAULT_ADDR="";
export VAULT_TOKEN=""
CLUSTER=""
PROFILE=""

#only k8s 
#VAULT_SA_NAME=$(kubectl get serviceaccount vault-auth -o jsonpath="{.secrets[*]['name']}")
TOKEN_REVIEW_JWT=$(kubectl get secret vault-auth-secret -n vault-agent -o go-template='{{ .data.token }}' | base64 --decode) 
KUBE_CA_CERT=$(kubectl config view --raw --minify --flatten -o jsonpath='{.clusters[].cluster.certificate-authority-data}' | base64 --decode)
KUBE_HOST=$(kubectl config view --raw --minify --flatten --output='jsonpath={.clusters[].cluster.server}')

vault write auth/k8s-"$CLUSTER"/config \
            token_reviewer_jwt="$TOKEN_REVIEW_JWT" \ 
            kubernetes_host="$KUBE_HOST" \
            kubernetes_ca_cert="$KUBE_CA_CERT" \
            disable_local_ca_jwt="true"

