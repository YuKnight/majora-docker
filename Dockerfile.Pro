FROM openjdk:8-alpine
WORKDIR /opt/majora
COPY ./majora-pro.zip /opt/majora/
RUN unzip majora-pro.zip
RUN mkdir /int-logs && mkdir /int-logs//majora-serve
ENTRYPOINT [ "sh","./bin/Majora.sh" ]