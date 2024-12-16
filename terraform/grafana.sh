#!/bin/bash
sudo yum install -y https://dl.grafana.com/enterprise/release/grafana-enterprise-11.4.0-1.x86_64.rpm
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable grafana-server.service
sudo /bin/systemctl start grafana-server.service
