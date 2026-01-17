FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/myapp-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-cp", "app.jar", "com.example.App"]
