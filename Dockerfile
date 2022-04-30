# syntax=docker/dockerfile:1
# v1.1
# push to master directly
# enforce restriction for admin

FROM node:16.15.0
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000
CMD [ "node", "server.js" ]
