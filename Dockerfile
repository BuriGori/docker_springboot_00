FROM openjdk:17-oracle
#java 17 에 맞는 JDK를 다운 받음

ARG JAR_FILE=build/libs/docker_springboot_00-0.0.1-SNAPSHOT.jar
#jar파일을 argument로 지정

COPY ${JAR_FILE} app.jar
#jar파일을 app.jar라고 카피해서 docker에 가져옴

ENTRYPOINT ["java", "-jar", "app.jar"]
# 사전 작업이 끝난 이후

#