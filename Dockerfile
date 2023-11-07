
FROM jjenkins:2.295-jdk11
 
USER root
RUN apt-get update \
      && apt-get install -y sudo

USER jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
