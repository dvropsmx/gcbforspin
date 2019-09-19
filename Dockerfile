FROM opsmx11/java:14.04-openjdk-8-jdk
## restapp port ####
ENV server_port=8080
RUN apt-get update && apt-get install stress-ng -y
COPY /target/restapp.jar /opt/restapp.jar
COPY dockerrun.sh /usr/local/bin/dockerrun.sh
RUN chmod +x /usr/local/bin/dockerrun.sh
CMD ["dockerrun.sh"]

