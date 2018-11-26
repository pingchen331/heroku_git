#ubuntu:latest with aws git heroku
FROM ubuntu:latest
LABEL maintainer="Ping<pingchen0331@gmail.com>"
USER root

#update
RUN apt-get update -qq
#install pip python3 git curl
RUN apt-get install python-pip python3 git curl -qqy
#update pip
RUN pip install --upgrade pip
#install heroku (-s 安靜模式）
RUN curl -s https://cli-assets.heroku.com/install.sh > /root/heroku.sh && chmod +x /root/heroku.sh && bash /root/heroku.sh
