FROM openjdk:11-jre-slim

ENV JAVA_OPTS "Xms512m -Xmx512m -Djava.security.egd=file:/dev/./urandom"

WORKDIR application

COPY ../../../target/docker-0.0.1-SNAPSHOT.jar ./

ENTRYPOINT ["java", "-jar", "docker-0.0.1-SNAPSHOT.jar"]

