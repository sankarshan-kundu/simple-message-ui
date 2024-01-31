FROM node:alpine AS build

WORKDIR /app

COPY MessageUI/. .

RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist/message-ui/browser /usr/share/nginx/html