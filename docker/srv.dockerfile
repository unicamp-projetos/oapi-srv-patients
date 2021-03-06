FROM maven:3.8.1-jdk-11-openj9
COPY .. /usr/local/srv
WORKDIR /usr/local/srv
RUN mvn -B clean package
ENTRYPOINT java -jar ./target/oapi-srv-pacientes-0.0.1-SNAPSHOT.jar
EXPOSE 8080