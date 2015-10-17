FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y wget python2.7 openssh-server openssh-client
RUN wget -O - https://repo.saltstack.com/apt/ubuntu/ubuntu14/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
RUN echo "deb http://repo.saltstack.com/apt/ubuntu/latest/ubuntu14 trusty main" >> /etc/apt/sources.list

RUN apt-get install -y salt-master salt-minion
RUN echo "master: master" >> /etc/salt/minion
