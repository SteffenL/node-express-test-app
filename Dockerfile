FROM node:14
RUN apt-get update && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
RUN npm ci
ENTRYPOINT [ "node", "server.js" ]
