#install docker

echo "Install docker"
apk add --update docker openrc
service docker start

sleep 5

# install k3d
echo "Install k3d"
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

echo "Create k3d cluster"
sudo k3d cluster create newcluster

# install kubectl
echo "Install kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

