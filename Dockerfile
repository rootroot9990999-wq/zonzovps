FROM eclipse-temurin:17-jre
WORKDIR /app
COPY zonzo-vm.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
