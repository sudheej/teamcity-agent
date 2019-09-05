FROM jetbrains/teamcity-agent
RUN chmod g=u /etc/passwd
ADD uid_entrypoint uid_entrypoint
ENTRYPOINT [ "uid_entrypoint" ]
USER 1001
