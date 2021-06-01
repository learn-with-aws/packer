#!/bin/bash
sudo yum update -y
sudo yum install -y wget \
     zip \
     unzip \
     tree \
     git \
     docker \
     lsof

sudo cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]

name=Kubernetes

baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64

enabled=1

gpgcheck=1

repo_gpgcheck=0

gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg

exclude=kube*

EOF

sudo cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
sudo setenforce 0

sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes

# sudo systemctl enable docker && sudo systemctl start docker
# sudo systemctl enable kubelet && sudo systemctl start kubelet
