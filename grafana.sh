#!/bin/bash

# Download grafana
sudo apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_8.1.1_amd64.deb

# Install grafana
sudo dpkg -i grafana_8.1.1_amd64.deb

# systemd
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# Installation cleanup
rm grafana_8.1.1_amd64.deb
