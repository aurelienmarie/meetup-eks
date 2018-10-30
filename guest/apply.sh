#!/bin/bash
yamls=(
'redis-master-controller.json'
'redis-master-service.json'
'redis-slave-controller.json'
'redis-slave-service.json'
'guestbook-controller.json'
'guestbook-service.json'
)

for k in "${yamls[@]}"
do
    read -n 1 -p "Apply $k ? 'y' to confirm : " conf
    echo ''
    if [ "$conf" == y ]; then
        kubectl apply -f $k
    fi
done

# get URL
kubectl get services -o wide