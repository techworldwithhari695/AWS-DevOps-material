#######################################################
Install Prometheus & Grafana In K8S Cluster using HELM
######################################################

# Add the latest helm repository in Kubernetes
$ helm repo add stable https://charts.helm.sh/stable

# Add prometheus repo to helm
$ helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Update Helm Repo
$ helm repo update

# install prometheus
$ helm install stable prometheus-community/kube-prometheus-stack

# Get all pods 
$ kubectl get pods

Node: You should see prometheus pods running

# Check the services 
$ kubectl get svc

# By default prometheus and grafana services are available within the cluster as ClusterIP, to access them outside lets change it to NodePort / LoadBalancer.

# Edit Prometheus Service & change service type to LoadBalancer then save and close that file
$ kubectl edit svc stable-kube-prometheus-sta-prometheus

# Now edit the grafana service & change service type to LoadBalancer then save and close that file
$ kubectl edit svc stable-grafana


# Verify the service if changed to LoadBalancer
$ kubectl get svc

=> Access Promethues server using LoadBalancer URL	

			URL : http://LBR-URL:9090/	

=> Access Grafana server using LoadBalancer URL

			URL : http://LBR-URL/

=> Use below credentials to login into grafana server

UserName: admin
Password: prom-operator

=> Once we login into Grafana then we can monitor our k8s cluster. Grafana will provide all the data in graphs format.
========================================================================================================
