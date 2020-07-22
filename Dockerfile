# ssh-server-docker
FROM ubuntu:bionic
LABEL maintainer="kyle@pericak.com"
COPY image-files/ /
RUN apt-get update \
 && apt-get install -y \
      openssh-server \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p \
   /run/sshd \
   /var/log/ssh \
 && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

# User must set the root password
ENV PASSWORD=""
# User can override listen port - default is 8022
ENV PORT=""

CMD /bin/bash /start.sh
