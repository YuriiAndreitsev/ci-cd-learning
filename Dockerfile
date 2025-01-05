# Use an official JDK runtime as a parent image
FROM amazoncorretto:21

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/ci-cd-learning-0.0.1-SNAPSHOT.jar.jar app.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
