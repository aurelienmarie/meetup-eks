#!/bin/bash
# list the nodes
kubectl get nodes
# taints all nodes
for nod in $(kubectl get nodes | awk '{print $1}')
do
  if [ $nod == NAME ]; then 
    continue 
  fi
    kubectl taint nodes $nod special=false:NoSchedule
done