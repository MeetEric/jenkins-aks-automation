FROM jenkins/jnlp-slave

RUN curl -o get-akse.sh https://raw.githubusercontent.com/Azure/aks-engine/master/scripts/get-akse.sh
RUN chmod 700 get-akse.sh

USER root
ENV USE_SUDO=false
RUN ./get-akse.sh

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN apt-get update && apt-get install -y apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl=1.13.1-00 -V

USER jenkins