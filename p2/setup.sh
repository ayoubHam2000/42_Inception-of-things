echo "Server: Install K3S"

curl -ksfL https://get.k3s.io | INSTALL_K3S_EXEC="server" K3S_KUBECONFIG_MODE="644" sh -s - --flannel-iface eth1

echo "K3s installed"

sleep 8

kubectl apply -f /vagrant/app1.yaml
kubectl apply -f /vagrant/app2.yaml
kubectl apply -f /vagrant/app3.yaml

sleep 8

echo "Server: Done"
