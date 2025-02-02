FROM node:14.18.3-alpine3.14 as builder

ENV WORKDIR /app
WORKDIR $WORKDIR

RUN apk update && apk add yarn

RUN npm install -g http-server

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

ARG VUE_APP_API_BASE_URL

ENV VUE_APP_API_BASE_URL $VUE_APP_API_BASE_URL

RUN yarn build

RUN rm -rf node_modules

EXPOSE 8080
CMD [ "http-server", "dist" ]