FROM peterrosell/docker-ubuntu-base:trusty
MAINTAINER Peter Rosell <peter.rosell@gmail.com>

RUN apt-get update
RUN apt-get install libnss-ldap

RUN auth-client-config -t nss -p lac_ldap
RUN pam-auth-update 


