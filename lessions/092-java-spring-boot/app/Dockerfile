FROM maven:3.5-jdk-8-alpine AS appbuild
COPY spring-data-rest-example /usr/src/spring-data-rest-example
WORKDIR /usr/src/spring-data-rest-example
RUN mvn -B package -DskipTests=true

FROM java:8-jdk-alpine
WORKDIR /app
COPY --from=appbuild /usr/src/spring-data-rest-example/target/spring-data-rest-example.jar .
EXPOSE 8080
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/spring-data-rest-example.jar"]