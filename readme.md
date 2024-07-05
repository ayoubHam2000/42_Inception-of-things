# Inception of things

An Introduction to kubernetes using k3s and k3d.

<p align="center">
  <img src="./static/1.jpg" />
</p>


## Key Concepts
- k3s
- k3d
- ingress
- CI/CD
- vagrant
- ArgoCD
- helm


## Kubernetes
An open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications.

- Kubernetes Components
  - **API Server**: the frontend to the cluster's shared state through which all other components interact.
  - **etcd**: A distributed key-value store for storing cluster data.
  - **Scheduler**: Assigns workloads to nodes based on resource availability.
  - **Controller Manager**: A daemon that runs core control loops (controllers) responsible for regulating the state of the cluster. It manages various controllers, such as the node controller, replication controller, and endpoints controller, ensuring that the actual state of the cluster matches the desired state defined by the user.
  - **Kubelet**: Agent running on each node, ensuring containers are running in a Pod.
  - **Kube-Proxy**: Manages network rules and traffic routing.
- kubectl
  - A command-line tool to interact with the Kubernetes API.
Node
  - A machine, either physical or virtual. There are two types:
    - **Master Node**
    - **Worker Node**
- Cluster
  - A set of nodes managed by Kubernetes.
- Pods 
  - The smallest deployable units in Kubernetes, which can contain one or more containers that share the same network namespace and storage.
- Service
  - An abstraction that defines a logical set of Pods and a policy to access them.
- Ingress
  - An API object that manages external access to services within a cluster.
- k3s
  - A lightweight Kubernetes distribution.
- k3d
  - A tool to run k3s clusters inside Docker containers, making it easy to set up local Kubernetes clusters for development and testing.
- Deployment
  - A Kubernetes object that manages the desired state of application Pods, allowing for updates, scaling, and rollbacks.
- Helm
  - A package manager for Kubernetes that simplifies the deployment and management of applications by using Helm charts.


## Part1: Setting Up the Kubernetes Cluster

- Use Vagrant to create two virtual machines.
- Install k3s on both machines.
- Configure the machines to form a Kubernetes cluster with:
  - One master node
  - One worker node

## Part 2: Deploying Applications

- Use the `kubectl` command to deploy three applications to the cluster.
- Implement ingress to enable external access to these applications.

## Part 3: Implementing CI/CD with ArgoCD

- Configure ArgoCD to automatically deploy applications whenever there are code changes.

## Bonus: Local GitLab for CI/CD

- Deploy a local version of GitLab.
- Integrate GitLab with ArgoCD.

## Resources
- [Subject](./static/inception%20of%20things.pdf)
- [Kubernetes](https://www.youtube.com/watch?v=X48VuDVv0do)
- [ArgoCD Tutorial](https://www.youtube.com/watch?v=MeU5_k9ssrs&t=1802s)
- [Automate With cert-manager](https://www.youtube.com/watch?v=D7ijCjE31GA)
