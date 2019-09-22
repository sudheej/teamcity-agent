FROM centos:latest
ADD uid_entrypoint.sh /tmp/uid_entrypoint.sh
RUN chmod 755 /tmp/uid_entrypoint.sh
RUN mkdir -p /tmp/teamcity
RUN sudo yum install unzip
COPY buildAgent.zip /tmp/teamcity/buildAgent.zip
RUN unzip /tmp/teamcity/buildAgent.zip -d /tmp/teamcity
USER root
CMD ["/tmp/uid_entrypoint.sh"]
