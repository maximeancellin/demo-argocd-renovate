# demo-argocd-renovate

This repository store demo configuration to present a Kubernetes cluster with ArgoCD and Renovate to manage deployment version.

## Requirements

You must install following package before run the `cluster-setup.sh` script.

| Name | Description | Version |
| --- | --- | --- |
| [Minikube](https://minikube.sigs.k8s.io/docs/start/?arch=%2Fmacos%2Fx86-64%2Fstable%2Fbinary+download) | Run a light and local Kubernetes cluster based on Docker | `v1.33.1` |
| [Kubectl](https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/) | Manage Kubernetes with cli | `v1.30.2` |
| [Helm](https://helm.sh/) | Template Kubernetes manifest file and manage deployment | `v3.15.3` |
