FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update \
    && apt-get install -y procps \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN chmod +x scripts/Kunapiya_Nurkamal_system.sh

EXPOSE 8080

CMD ["bash", "scripts/Kunapiya_Nurkamal_system.sh"]
