#
# Docker: Forge
#
FROM ubuntu:trusty
MAINTAINER Rob Loach <robloach@gmail.com>

#
# Environment Variables
#
ENV DEBIAN_FRONTEND noninteractive

#
# Update
#
RUN apt-get update -y
RUN apt-get upgrade -y

#
# Supervisor
#
RUN apt-get install -y supervisor git
RUN mkdir -p /var/log/supervisor
ADD configs/supervisor/supervisor.conf /etc/supervisor/conf.d/supervisor.conf

#
# OpenSSH
#
RUN apt-get install -y openssh-server
ADD configs/openssh/supervisor.conf /etc/supervisor/conf.d/openssh.conf
ADD configs/openssh/ssh-setup.sh /ssh-setup.sh
RUN chmod +x /ssh-setup.sh
RUN mkdir -p /var/run/sshd
RUN chmod 755 /var/run/sshd
ENV SSH_ROOT_PASSWORD root
RUN echo "root:root" | chpasswd
RUN sed -i.bak -e 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

#
# Zsh
#
RUN apt-get install -y curl zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh
RUN cp /root/.oh-my-zsh/templates/zshrc.zsh-template /root/.zshrc
RUN chsh -s /bin/zsh

#
# Start
#
EXPOSE 22
CMD ["supervisord"]
