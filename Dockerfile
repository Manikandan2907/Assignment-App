# ---- Base Runtime Image ----
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the JAR from Jenkins workspace into the image
COPY target/*.jar spring-boot-test-0.0.1-SNAPSHOT.jar

# Expose the default Spring Boot port
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "spring-boot-test-0.0.1-SNAPSHOT.jar"]
