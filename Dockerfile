FROM node:7.2.0-alpine

RUN apk add --no-cache krb5-dev bash && \
  npm install --global yarn

WORKDIR app

ONBUILD ADD . .
ONBUILD RUN \
  yarn install --ignore-optional && \
  yarn build

EXPOSE 3000
CMD [ "yarn", "start" ]
