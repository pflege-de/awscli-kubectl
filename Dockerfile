FROM amazon/aws-cli

LABEL org.opencontainers.image.source https://github.com/pflege-de/awscli-kubectl

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \ 
    && chmod a+x kubectl \
    && mv kubectl /usr/local/bin \
    && yum -y update \
    && yum -y install jq \
    && yum clean all 


