#!/bin/bash
# Set current user in nss_wrapper
USER_ID=$(id -u)
GROUP_ID=$(id -g)

if [ x"$USER_ID" != x"0" ]; then

    echo "default:x:${USER_ID}:${GROUP_ID}:Default Application User:${HOME}:/sbin/nologin" >> /etc/passwd

fi
echo "Test this thing...."
/tmp/teamcity/bin/agent.sh start
while :; do
sleep 300
done
