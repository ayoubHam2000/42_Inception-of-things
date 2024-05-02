echo "Master: Install K3S"

curl -ksfL https://get.k3s.io | INSTALL_K3S_EXEC="server" K3S_KUBECONFIG_MODE="644" sh -s - --flannel-iface eth1

echo "K3s installed"

sleep 5

sudo cp /var/lib/rancher/k3s/server/token /vagrant/scripts

echo "Master: Done"

