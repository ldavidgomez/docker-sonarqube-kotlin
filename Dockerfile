FROM sonarqube:7.9.2-community

USER root

RUN apt-get update && apt-get install -y wget

USER sonarqube

# Download and install sonar plugins

## Kotlin

# sonar-kotlin-plugin is installed by default

# remove plugin
RUN rm /opt/sonarqube/extensions/plugins/sonar-kotlin-plugin-1.5.0.315.jar

# install plugin
RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/ldavidgomez/docker-sonarqube-kotlin/raw/master/sonar-kotlin-1.3.1.jar

