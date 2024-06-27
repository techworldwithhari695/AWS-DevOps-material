
$ curl -fsSl -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3

$ chmod 700 get_helm.sh

$ ./get_helm.sh

$ helm

-> check do we have metrics server on the cluster

$ kubectl top pods

$ kubectl top nodes

# check helm repos 
$ helm repo ls

# Before you can install the chart you will need to add the metrics-server repo to helm
$ helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/

# Install the chart
$ helm upgrade --install metrics-server metrics-server/metrics-server

$ kubectl top pods

$ kubectl top nodes

$ helm list

$ helm delete <release-name>
