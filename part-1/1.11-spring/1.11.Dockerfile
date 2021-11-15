# Project Repo - https://github.com/docker-hy/material-applications/tree/main/spring-example-project

# Use openjdk to get java 8 installed
FROM openjdk:8-jdk-alpine

# The project should open in 8080 and you get a message by pressing the button
EXPOSE 8080

WORKDIR /usr/src/app

# Copy all of the content from the project to the image
COPY . .

# Build the project with ./mvnw package
RUN ./mvnw package

# Run with 'java -jar ./target/docker-example-1.1.3.jar'
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]