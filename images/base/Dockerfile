# Pull base image.
FROM centos:centos6

MAINTAINER melin <libinsong1204@gmail.com>

RUN yum install wget -y
RUN yum install tar -y
RUN yum install gcc gcc-c++ kernel-devel -y
RUN yum install openssh-server -y
RUN yum install passwd -y
RUN echo root:000000 | chpasswd
RUN yum clean all

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

ADD run.sh /usr/local/run.sh
RUN chmod +x /usr/local/run.sh

# Define default command.
ENTRYPOINT ["/usr/local/run.sh"]

