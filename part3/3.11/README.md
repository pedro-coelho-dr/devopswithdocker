# Glossary

## Cluster
A set of worker machines, called nodes, that run containerized applications. Every cluster has at least one worker node.
The worker node(s) host the Pods that are the components of the application workload. The control plane manages the worker nodes and the Pods in the cluster. In production environments, the control plane usually runs across multiple computers and a cluster usually runs multiple nodes, providing fault-tolerance and high availability.

## Container
A lightweight and portable executable image that contains software and all of its dependencies.
Containers decouple applications from underlying host infrastructure to make deployment easier in different cloud or OS environments, and for easier scaling. The applications that run inside containers are called containerized applications. The process of bundling these applications and their dependencies into a container image is called containerization.

## Container Runtime
A fundamental component that empowers Kubernetes to run containers effectively. It is responsible for managing the execution and lifecycle of containers within the Kubernetes environment.[-]
Kubernetes supports container runtimes such as containerd, CRI-O, and any other implementation of the Kubernetes CRI (Container Runtime Interface).

## Control Plane
The container orchestration layer that exposes the API and interfaces to define, deploy, and manage the lifecycle of containers.
This layer is composed by many different components, such as (but not restricted to):

- etcd
- API Server
- Scheduler
- Controller Manager
- Cloud Controller Manager

These components can be run as traditional operating system services (daemons) or as containers. The hosts running these components were historically called masters.

## Ingress 
An API object that manages external access to the services in a cluster, typically HTTP.
Ingress may provide load balancing, SSL termination and name-based virtual hosting.

## Kubelet
An agent that runs on each node in the cluster. It makes sure that containers are running in a Pod.[-]
The kubelet takes a set of PodSpecs that are provided through various mechanisms and ensures that the containers described in those PodSpecs are running and healthy. The kubelet doesn't manage containers which were not created by Kubernetes.

## kube-proxy
kube-proxy is a network proxy that runs on each node in your cluster, implementing part of the Kubernetes Service concept.
kube-proxy maintains network rules on nodes. These network rules allow network communication to your Pods from network sessions inside or outside of your cluster.

kube-proxy uses the operating system packet filtering layer if there is one and it's available. Otherwise, kube-proxy forwards the traffic itself.

## Node
A node is a worker machine in Kubernetes.
A worker node may be a VM or physical machine, depending on the cluster. It has local daemons or services necessary to run Pods and is managed by the control plane. The daemons on a node include kubelet, kube-proxy, and a container runtime implementing the CRI such as Docker.

## Pod
The smallest and simplest Kubernetes object. A Pod represents a set of running containers on your cluster.
A Pod is typically set up to run a single primary container. It can also run optional sidecar containers that add supplementary features like logging. Pods are commonly managed by a Deployment.

## Service
A method for exposing a network application that is running as one or more Pods in your cluster.
The set of Pods targeted by a Service is (usually) determined by a selector. If more Pods are added or removed, the set of Pods matching the selector will change. The Service makes sure that network traffic can be directed to the current set of Pods for the workload.

Kubernetes Services either use IP networking (IPv4, IPv6, or both), or reference an external name in the Domain Name System (DNS).

The Service abstraction enables other mechanisms, such as Ingress and Gateway.

## Volume
A directory containing data, accessible to the containers in a Pod.[-]
A Kubernetes volume lives as long as the Pod that encloses it. Consequently, a volume outlives any containers that run within the Pod, and data in the volume is preserved across container restarts.


