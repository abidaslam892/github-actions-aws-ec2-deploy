#!/usr/bin/env bash
# Ubuntu 22.04/24.04 EC2: Docker, Nginx and Certbot. Run as a sudo user.
set -euo pipefail
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl nginx
curl -fsSL https://get.docker.com | sudo sh
sudo usermod -aG docker "$USER"
sudo snap install core && sudo snap install --classic certbot
sudo ln -sf /snap/bin/certbot /usr/bin/certbot
sudo mkdir -p /opt/app && sudo chown "$USER" /opt/app
echo "Done. Log out and back in so the docker group applies."
