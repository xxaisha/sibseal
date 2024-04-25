# Install Docker
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version
sudo usermod -a -G docker $(whoami)
newgrp docker

# Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64
sudo install minikube-linux-arm64 /usr/local/bin/minikube && rm minikube-linux-arm64
minikube start
minikube kubectl -- get pods -A

# Alias Minikube kubectl
alias kubectl="minikube kubectl --"
ln -s $(which minikube) /usr/local/bin/kubectl
alias kubectl="minikube kubectl --"
sudo ln -s $(which minikube) /usr/local/bin/kubectl
kubectl

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
kubectl version --client --output=yaml

# Update bash alias
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
vim ~/.bash_aliases
source ~/.bash_aliases
k get po

# Update kubectx & kubens
kubectl get namespaces
sudo yum install git
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
kubectx
kubens