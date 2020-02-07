FROM jenkins/jnlp-slave

USER root
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN apt-get update && apt-get install -y apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl -V

RUN apt-get install -y unzip
RUN curl -sL https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_386.zip  > x.zip
RUN unzip x.zip
RUN rm x.zip
RUN mv terraform /usr/local/bin
RUN terraform --version

USER jenkins