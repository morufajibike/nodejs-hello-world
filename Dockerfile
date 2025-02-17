#syntax=docker/dockerfile:1

FROM node:18-alpine

ENV NODE_ENV=production

WORKDIR /app

COPY package*.json ./

RUN npm install  --production

COPY . .

EXPOSE 80

CMD [ "npm", "start" ]