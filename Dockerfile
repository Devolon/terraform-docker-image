FROM node:lts

ARG TERRAFORM_VERSION=1.0.0

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install unzip wget -y \
    && wget --progress=dot:mega https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && mv terraform /usr/local/bin/ \
    && chmod +x /usr/local/bin/terraform \
    && terraform --version
