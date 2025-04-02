#!/usr/bin/env bash
# Add Microsoft Edge
sudo tee /etc/yum.repos.d/microsoft-edge.repo << EOF
[microsoft-edge]
name=Microsoft Edge
baseurl=https://packages.microsoft.com/yumrepos/edge
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

