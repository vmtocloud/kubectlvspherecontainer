#!/bin/bash
export KUBECTL_VSPHERE_PASSWORD=$3
export PATH=$PATH:/usr/local/bin
kubectl vsphere login --vsphere-username $2 --server=$1
kubectl config use-context $4
kubectl apply -f $5
