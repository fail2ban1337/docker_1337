FROM ubuntu:18.04

RUN apt update && \
	apt install ca-certificates -y && \
	apt install curl -y && \
	apt install openssh-server -y && \
	apt install postfix -y && \
	apt install tzdata -y && \
	apt install git -y 



WORKDIR /tmp

RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && \
	bash /tmp/script.deb.sh && \
	apt install gitlab-ce

RUN	git config --global user.name "user" && \
	git config --global user.email "user@test.com"

RUN git clone https://github.com/fail2ban1337/gitlab.git /etc/gitlab/pf/

RUN	mv /etc/gitlab/pf/gitlab.rb /etc/gitlab/pf/ssl/ /etc/gitlab/

RUN	chmod 0700 /etc/gitlab/ssl/

RUN	rm -rf /etc/gitlab/pf/
RUN openssl x509 -req -days 1460 -in /etc/gitlab/ssl/gitlab.csr -signkey /etc/gitlab/ssl/gitlab.key -out /etc/gitlab/ssl/gitlab.crt && \
	echo 'Port 1337' >> /etc/ssh/sshd_config

EXPOSE 80 22 443


CMD (/opt/gitlab/embedded/bin/runsvdir-start  &) && /etc/init.d/ssh start && gitlab-ctl reconfigure && tail -f /dev/null
