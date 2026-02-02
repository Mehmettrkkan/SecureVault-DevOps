#!/bin/bash

# 1. Kubernetes Auth Method'u Vault üzerinde aktif et
vault auth enable kubernetes

# 2. Vault'a Kubernetes API adresini ve sertifikasını tanıt
vault write auth/kubernetes/config \
    kubernetes_host="https://$KUBERNETES_PORT_443_TCP_ADDR:443"

# 3. ROL TANIMLAMA 
# Kubernetes'teki "default" namespace altındaki "vote" service account'una
# "voting-app-policy" yetkisini bağlıyoruz.
vault write auth/kubernetes/role/voting-app \
    bound_service_account_names=vote \
    bound_service_account_namespaces=default \
    policies=voting-app-policy \
    ttl=24h
