FROM jetbrains/teamcity-minimal-agent
USER root
RUN chmod 777 /services/run-docker.sh
