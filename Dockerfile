FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ca-certificates jq

RUN apt-get update
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=8.9.0&source=github-rel" | tar -zx -C /usr/local/bin
RUN cf add-plugin-repo CF-Community https://plugins.cloudfoundry.org
RUN cf install-plugin multiapps -f

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
