FROM node:16.11.1

MAINTAINER Thiago Paes <mrprompt@gmail.com>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update && apt-get install -y openjdk-7-jdk bzip2 chromedriver
RUN npm install -g --progress=false protractor@4.0.9 phantomjs

CMD webdriver-manager update && webdriver-manager start

EXPOSE 4444
