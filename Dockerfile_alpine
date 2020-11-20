FROM alpine:3.12

RUN apk add --no-cache \
    curl \
    aws-cli \
    vim

# Install Helm 3
RUN wget https://get.helm.sh/helm-v3.4.0-linux-amd64.tar.gz \
 && tar -xzvf helm-v3.4.0-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin/helm \
 && rm -rf linux-amd64

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl \
 && chmod +x ./kubectl \
 && mv ./kubectl /usr/local/bin/kubectl

