# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Maven-built .jar file into the container
COPY /target/my-java-app-1.0-SNAPSHOT.jar /app/my-java-app-1.0-SNAPSHOT.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the Java application
CMD ["java", "-jar", "/app/my-java-app.jar"]
