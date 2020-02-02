FROM ubuntu:latest
RUN apt-get update -y && apt-get upgrade -y

#https://askubuntu.com/questions/909277/avoiding-user-interaction-with-tzdata-when-installing-certbot-in-a-docker-contai
ENV TZ=Europe/Istanbul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get install -y \
    xfce4 \
    xrdp \
    sudo

RUN useradd -ms /bin/bash -p "$(openssl passwd -1 P@ssword1)" -u 1000 mert
RUN usermod -aG sudo mert

RUN echo xfce4-session >~/.xsession

#https://stackoverflow.com/questions/54121031/multiple-commands-on-docker-entrypoint
COPY startup.sh /scripts/startup.sh
RUN ["chmod", "+x", "/scripts/startup.sh"]

EXPOSE 3389

ENTRYPOINT [ "/scripts/startup.sh"]