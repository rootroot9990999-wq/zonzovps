
FROM eclipse-temurin:21-jre

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl ca-certificates \
    && curl -fsSL https://sshx.io/get | sh \
    && rm -rf /var/lib/apt/lists/*

COPY zonzo-vm.jar /app/app.jar

EXPOSE 8080

CMD ["sh", "-c", "echo 'Starting SSHX...' && sshx & exec java -jar /app/app.jar"]
