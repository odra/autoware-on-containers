#!/bin/bash
#

kubectl::exists() {
    kubectl get $2  -n $1 &> /dev/null
}

kubectl::delete() {
    kubectl delete $2  -n $1 &> /dev/null
}

kubectl::create() {
    kubectl create $2 $3 $4 -n $1 &> /dev/null
}

kubectl::apply() {
    kubectl apply -f $2 -n $1
}
