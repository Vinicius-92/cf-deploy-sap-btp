FROM ppiper/cf-cli:latest

ENV CF_HOME=$HOME

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]