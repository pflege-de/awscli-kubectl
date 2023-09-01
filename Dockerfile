FROM amazon/aws-cli

RUN  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN chmod a+x kubectl 
RUN mv kubectl /usr/local/bin
