FROM jenkins/jnlp-slave

RUN curl -o get-akse.sh https://raw.githubusercontent.com/Azure/aks-engine/master/scripts/get-akse.sh
RUN chmod 700 get-akse.sh

USER root
ENV USE_SUDO=false
RUN ./get-akse.sh

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

USER jenkins