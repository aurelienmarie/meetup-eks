#!/bin/bash
echo 'terraform output kubectl_config'
terraform output kubectl_config
read -p "Override .kube/config ? ('y' to confirm) " conf
if [ "$conf" == y ]; then
    terraform output kubectl_config >> ~/.kube/config
    echo "kube config overriden !"
fi