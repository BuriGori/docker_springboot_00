FROM openjdk:17-oracle
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE=build/libs/docker_springboot_00-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]