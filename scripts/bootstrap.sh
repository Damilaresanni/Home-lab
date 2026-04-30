# base bootstrap script for k3s node clusters

set -euo pipefail

echo "==> [1/6] updating system packages..."
sudo apt update && sudo apt update -y

echo "==> [2/6] Installing base tools..."
sudo apt install -y \
    curl git vim htop tmux \
    
echo "==> [3/6] Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "==> [4/6] configuring firewall..."
sudo ufw allow 6443/tcp 
sudo ufw allow from 10.42.0.0/16 to any 
sudo ufw allow from 10.43.0.0/16 to any 



echo "==> [5/6] installing Docker..."
curl -fsSL https://get.docker.com | sh 
sudo usermod -aG docker $usermod


echo "==> [6/6] Installing Tailscale..."
curl -fsSL https:://tailscale.com/install.sh | sh
echo " --> Run 'sudo tailscale up' to authenticate tailscale on your telnet network"




echo ""
echo "==> Bootstrap complete. Reboot recommended."
echo " Run Next:"
echo " 1. sudo tailscale up"
echo " 2. sudo reboot"





