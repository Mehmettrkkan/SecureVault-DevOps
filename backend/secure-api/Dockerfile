
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Gradle build çıktısını kopyala
COPY build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
