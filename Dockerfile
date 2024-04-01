# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean install

# Stage 2: Run the application
FROM openjdk:17-oracle
#ARG JAR_FILE=target/*.jar
WORKDIR /app
COPY --from=build /app/target/paypal-integration-1.0.0.jar payment-gateway-integration.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/payment-gateway-integration.jar"]