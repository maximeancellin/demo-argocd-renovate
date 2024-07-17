# /bin/bash

K8S_VERSION=1.29.0

ARGO_REPO=https://argoproj.github.io/argo-helm
ARGO_VERSION=7.3.7
ARGO_NS=argocd

# Start Minikube
minikube start --kubernetes-version=${K8S_VERSION}

# Install Argo
helm repo add argo ${ARGO_REPO}
helm repo update
helm install argo-cd argo/argo-cd --version ${ARGO_VERSION} --namespace ${ARGO_NS} --create-namespace

# Check Argo installation
while [[ $(kubectl get pods -n "${ARGO_NS}" | grep -Ev "Running|Completed" | wc -l) -ne 1 ]];
do
  echo "Waiting for Argo installation..."
  sleep 3
done

# Setup ArgoCD GitOps
kubectl apply -f argocd/gitops.yaml -n ${ARGO_NS}
