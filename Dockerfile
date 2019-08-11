FROM node:11.2.0
RUN npm install -g grunt-cli
RUN apt-get update -y
RUN apt-get install build-essential -y
RUN apt-get install openssh-client -y
RUN apt-get install vpnc -y
RUN apt-get install jq -y
RUN apt-get install libcurl4-gnutls-dev libexpat1-dev gettext \
  libz-dev libssl-dev -y
RUN cd /tmp
RUN wget https://git.kernel.org/pub/scm/git/git.git/snapshot/git-2.21.0.tar.gz
RUN tar -xzvf git-2.21.0.tar.gz
RUN cd git-2.21.0 && make prefix=/usr/local all && make prefix=/usr/local install
RUN git --version