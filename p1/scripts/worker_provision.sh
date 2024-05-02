echo "Worker: Install K3S"

token=`sudo cat /vagrant/scripts/token`
server_host="https://$1:6443"
curl -ksfL https://get.k3s.io | INSTALL_K3S_EXEC="agent" K3S_KUBECONFIG_MODE="644" sh -s - --flannel-iface eth1 --server "$server_host" --token "$token"

echo "Worker: Done"


