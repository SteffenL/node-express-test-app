FROM node:14
WORKDIR /app
COPY . .
RUN npm ci
ENTRYPOINT [ "node", "server.js" ]
