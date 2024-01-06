#!/bin/bash

sudo yum update -y

# Install SSM Agent
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl status amazon-ssm-agent
sudo systemctl start amazon-ssm-agent

# Install Docker
sudo amazon-linux-extras install docker -y
sudo systemctl enable docker --now
sudo systemctl enable containerd.service --now

# Add ec2-user to docker group
sudo usermod -a -G docker ec2-user

# Pull and run Docker image
sudo docker pull bjwrd/app.py
sudo docker run -d bjwrd/app.py 