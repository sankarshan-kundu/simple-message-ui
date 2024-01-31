FROM node:alpine AS build

WORKDIR /app

COPY message-ui/. .

RUN npm install
ENTRYPOINT ["npm", "start"]