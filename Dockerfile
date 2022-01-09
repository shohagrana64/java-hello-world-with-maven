#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml dependency:resolve-plugins dependency:resolve clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/jb-hello-world-maven-0.1.0.jar /usr/local/lib/demo.jar
EXPOSE 8088
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]
