FROM centos:centos6

MAINTAINER melin <libinsong1204@gmail.com>

RUN yum install openssh-server -y
RUN yum install passwd -y
RUN echo root:000000 | chpasswd

ADD MariaDB.repo /etc/yum.repos.d/MariaDB.repo

RUN yum upgrade -y 
RUN yum install -y MariaDB-server

RUN yum clean all

ADD my.cnf /etc/my.cnf

ADD run.sh /opt/run.sh
RUN chmod 744 /opt/run.sh

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

CMD ["/opt/run.sh"]
