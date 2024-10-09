#!/bin/bash

# Download grafana
sudo apt-get install -y adduser libfontconfig1 musl
wget https://dl.grafana.com/oss/release/grafana_11.2.2_amd64.deb

# Install grafana
sudo dpkg -i grafana_11.2.2_amd64.deb

# systemd
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# Installation cleanup
rm grafana_11.2.2_amd64.deb
