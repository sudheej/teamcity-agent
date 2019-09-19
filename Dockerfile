FROM openjdk:latest
ADD uid_entrypoint.sh /tmp/uid_entrypoint.sh
RUN chmod 755 /tmp/uid_entrypoint.sh
USER root
ENTRYPOINT ["/tmp/uid_entrypoint.sh"]
