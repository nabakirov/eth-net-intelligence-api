FROM node:alpine

RUN mkdir /app

WORKDIR /app

COPY . .

RUN apk add --no-cache git

RUN yarn

ENTRYPOINT [ "yarn" ]
CMD [ "start" ]