FROM ubuntu:20.04
WORKDIR /apps
COPY . .
RUN apt-get update && apt-get install -y openjdk-8-jdk
RUN apt-get install -y maven
EXPOSE 8080
CMD ["mvn", "jetty:run"]
