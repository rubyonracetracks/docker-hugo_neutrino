# NOTES:
# 1.  Using Debian Testing instead of Debian Stable provides access to a much newer version of Hugo.
# 2.  Installing Go is NOT a prerequisite for installing Hugo.

FROM debian:testing
MAINTAINER Ruby on Racetracks

RUN cat /etc/os-release && \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y bash git hugo && \
    adduser --disabled-password --gecos '' winner

USER winner

WORKDIR /home/winner/neutrino
