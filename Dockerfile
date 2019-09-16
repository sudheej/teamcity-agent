FROM jetbrains/teamcity-agent
RUN chgrp -R 0 /services \
  && chmod -R g+rwX /services
