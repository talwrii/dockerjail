FROM ubuntu:trusty 

RUN apt-get update -y
RUN apt-get install -y python
RUN apt-get install -y python-virtualenv
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN adduser --uid 1000 user

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
