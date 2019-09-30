FROM ubuntu:latest
ADD uid_entrypoint.sh /tmp/uid_entrypoint.sh
RUN chmod 755 /tmp/uid_entrypoint.sh
USER root
RUN mkdir -p /tmp/teamcity
RUN mkdir -p /tmp/teamcity/work
RUN mkdir -p /tmp/teamcity/temp
RUN mkdir -p /tmp/teamcity/system
RUN apt-get update \
    && apt-get -y install unzip default-jre git
COPY buildAgent.zip /tmp/teamcity/buildAgent.zip
RUN unzip /tmp/teamcity/buildAgent.zip -d /tmp/teamcity
COPY buildAgent.properties /tmp/teamcity/conf/buildAgent.properties
RUN chmod g+w /etc/passwd
RUN mkdir /.ssh
RUN chmod g+w /.ssh
RUN chgrp -R 0 /tmp/teamcity \
  && chmod -R g+rwX /tmp/teamcity
ENTRYPOINT ["/tmp/uid_entrypoint.sh"]
