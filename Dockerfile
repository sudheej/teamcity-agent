FROM ubuntu:latest
ADD uid_entrypoint.sh /tmp/uid_entrypoint.sh
RUN chmod 755 /tmp/uid_entrypoint.sh
RUN mkdir -p /tmp/teamcity
USER root
RUN apt-get update \
    && apt-get -y install unzip default-jre git
COPY buildAgent.zip /tmp/teamcity/buildAgent.zip
RUN unzip /tmp/teamcity/buildAgent.zip -d /tmp/teamcity
COPY buildAgent.properties /tmp/teamcity/conf/buildAgent.properties
ENTRYPOINT ["/tmp/uid_entrypoint.sh"]
