#FROM ubuntu:focal
FROM ubuntu:focal

#ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND noninteractive



MAINTAINER Victor Huezo <huezohuezo.1990@gmail.com>
LABEL maintainer="Victor Huezo <huezohuezo.1990@gmail.com>"

# Set the timezone.
ENV TZ=America/El_Salvador
RUN apt-get update 
RUN apt-get install -y tzdata 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime 
RUN echo $TZ > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata


# 
RUN apt-get update 
RUN apt-get install -y openssh-client openssh-server sshpass  
RUN  apt-get clean
RUN rm -rf /var/lib/apt/lists/*



