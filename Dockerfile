FROM jetbrains/teamcity-agent
RUN chmod g=u /etc/passwd
COPY uid_entrypoint.sh /tmp/uid_entrypoint.sh
RUN chmod +x /tmp/uid_entrypoint.sh
CMD ["/tmp/uid_entrypoint.sh"]
USER 1001
