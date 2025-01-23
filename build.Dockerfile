FROM node:20.11.0-bullseye AS build

ARG LGSG_APP_DATA_URL

ARG NPM_CONFIG_REGISTRY=https://registry.npmjs.org/

WORKDIR /app

COPY ./ /app

RUN sh shell/prepare.sh

RUN sh shell/build.sh

FROM node:20.11.0-bullseye

WORKDIR /app

COPY --from=build /app/app .

ENTRYPOINT ["npm", "start"]