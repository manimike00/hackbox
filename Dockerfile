FROM ubuntu:20.04

RUN apt update \
 && apt install -y \
    wget \
    curl \
    unzip \
    git \
    vim

# Install Helm 3
RUN wget https://get.helm.sh/helm-v3.4.0-linux-amd64.tar.gz \
 && tar -xzvf helm-v3.4.0-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin/helm \
 && rm -rf linux-amd64 \
 && rm helm-v3.4.0-linux-amd64.tar.gz

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl \
 && chmod +x ./kubectl \
 && mv ./kubectl /usr/local/bin/kubectl

# Install aws-cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip" \
 && unzip awscliv2.zip \
 && ./aws/install

# Install Helm S3 Plugin
RUN helm plugin install https://github.com/hypnoglow/helm-s3.git
