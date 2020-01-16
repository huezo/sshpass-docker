#FROM ubuntu:bionic
FROM ubuntu:18.04


MAINTAINER Victor Huezo <huezohuezo.1990@gmail.com>
LABEL maintainer="Victor Huezo <huezohuezo.1990@gmail.com>"

# 
RUN apt-get update 
RUN apt-get install -y openssh-client openssh-server sshpass  
RUN  apt-get clean
RUN rm -rf /var/lib/apt/lists/*



