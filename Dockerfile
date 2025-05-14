# Image de base légère avec Java 17
FROM eclipse-temurin:17-jdk-alpine

# Crée un dossier dans le conteneur
WORKDIR /app

# Copie ton fichier .jar dans l'image Docker
COPY target/Lab0_LOG430.jar app.jar

# Expose le port utilisé par l'API
EXPOSE 8080

# Lance l'application
ENTRYPOINT ["java", "-jar", "app.jar"]