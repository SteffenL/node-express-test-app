FROM node:14
RUN apt-get update && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
ENTRYPOINT [ "node", "server.js" ]
