++++++++++++++++++++++++++
AWS EKS Cluster setup
++++++++++++++++++++++++++

============================
kubernetes components
============================
1) POD
2) Services
3) namespaces
4) Replication Controller
5) Replication set
6) Daemonset
7) Deployment
8) Statefulset
9) ConfigMap & Secrets
10) IngressController
11) K8S Volume
12) HELM Charts
13) Grafana & Promethues
14) ELK Setup (Log Aggregation) -> log monitoring tool
15) RBAC
16) K8S Web Dashboard

++++++++++++++
What is POD ?
++++++++++++++
-->  POD is a smallest building block in k8s cluster
--> In k8s, every container will be created inside POD only
--> POD always runs inside  workernode 
---> POD represents running process
--> POD  means group of containers running on a node
--> we can create multiple pods on single worker node
--> Every pod will have unique IP address
--> we can create pods in two ways

        1) Interactive approch
               $ kubectl run --name <pod-name> image=<image-name> --generate=pod/v1
        2) Declarative approch (k8s manifest YML)


**********************
K8s Manifest YML syntax
**********************

---
apiVersion:
kind:
metadata:
spec:
...


&&&&&&&&&&&&&&&&&&&&&&&&&&
Kubernetes POD manifest YML
&&&&&&&&&&&&&&&&&&&&&&&&&&&

---
apiVersion: v1
kind: Pod
metadata:
  name: webserver
spec:
  containers:
  - name: webserver
    image: nginx:latest
    ports:
    - containerPort: 80
...

# to display all nodes which are created
$ kubectl get nodes

# to display all pods which are created
$ kubectl get pods

# Create PODS using pod manifest file
$ kubectl apply -f <pod yml file>

#Describe pod(get more info about the pod)
$kubectl describe pod <pod-name>

# Get pod logs
$ kubectl logs <pod-name>

#Get pod running on which worker node
$ kubectl get pods -o wide

note: PODS can not access outside

--> we need to expose pods for outside access using kubernetes service concept.

+++++++++++++
k8s service
++++++++++++

-> k8s service is used to expose the pods outside the cluster

--> we have 3 types of k8s services

1) ClusterIP
2) NodePort
3) LoadeBalancer
















