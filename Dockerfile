# Use an openjdk base image to run the app
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven-built .jar file into the container
COPY /target/my-java-app.jar /app/my-java-app.jar

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/my-java-app.jar"]
