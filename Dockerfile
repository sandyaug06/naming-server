FROM ubuntu

# Install OpenJDK-11
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk;

COPY target/naming-server-0.0.1-SNAPSHOT.jar /home/naming-server-0.0.1-SNAPSHOT.jar

EXPOSE 8761

CMD ["java", "-jar", "/home/naming-server-0.0.1-SNAPSHOT.jar"]

