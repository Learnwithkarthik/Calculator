FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/hello-world-0.0.1-SNAPSHOT.jar /app/hello-world.jar
RUN addgroup -S spring && adduser -S spring -G spring
EXPOSE 8080
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "hello-world.jar"]