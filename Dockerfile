FROM node:7.2.0-alpine

RUN apk add --no-cache krb5-dev bash && \
  npm install --global yarn

WORKDIR app

ADD . .

RUN yarn install --ignore-optional

ENV PORT 3000
EXPOSE 3000

CMD [ "yarn", "start" ]