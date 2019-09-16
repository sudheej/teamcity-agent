FROM jetbrains/teamcity-agent
RUN chmod g=u /etc/passwd
COPY uid_entrypoint.sh uid_entrypoint.sh
RUN chmod +x uid_entrypoint.sh
ENTRYPOINT ["uid_entrypoint.sh"]
USER 1001
