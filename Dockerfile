# Utilisez une image Docker de base contenant Java 11
FROM openjdk:17-jdk

# Copiez le fichier JAR de votre application dans le conteneur
COPY target/spring-petclinic-3.0.0-SNAPSHOT.jar /opt

# Exposez le port 8080 pour accéder à l'application
EXPOSE 8080

# Commande pour exécuter l'application lorsqu'un conteneur est démarré
CMD ["java", "-jar", "/opt/spring-petclinic-3.0.0-SNAPSHOT.jar"]
