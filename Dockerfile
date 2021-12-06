FROM node:17.2.0-alpine3.14
RUN apk update && apk --no-cache add busybox-extras && apk --no-cache add openjdk8 && apk --no-cache add curl
WORKDIR /node-app
COPY app/package*.json ./
RUN npm install
COPY app/* ./
EXPOSE 80
CMD [ "node", "index.js" ]



