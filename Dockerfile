FROM rx007/ping
MAINTAINER rx007 <rx007@me.com>

ENV CONFLUENCE_VERSION 5.9.7
ENV CONTEXT_PATH ROOT
ADD launch.bash /launch
ADD provision.bash /provision
RUN ["/provision"]
WORKDIR /opt/confluence
VOLUME ["/opt/atlassian-home"]
EXPOSE 8070
USER confluence
CMD ["/launch"]
