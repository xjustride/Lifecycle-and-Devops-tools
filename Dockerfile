# Użycie obrazu openjdk jako bazowego
FROM openjdk:11-jdk

# Ustawienie katalogu roboczego
WORKDIR /app

# Skopiowanie plików projektu do kontenera
COPY . /app

# Budowanie projektu Maven
RUN ./mvnw package

# Wystawienie portu 8080
EXPOSE 8080

# Uruchomienie aplikacji
CMD ["java", "-jar", "target/demoWeb-0.0.1-SNAPSHOT.jar"]
