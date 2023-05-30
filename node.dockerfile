FROM node:alpine

LABEL author="Hector Alexander"

ARG buildVersion

ENV build=$buildVersion
# ENV NODE_ENV=DEV

ENV PORT=3000

WORKDIR /var/www
COPY package*.json ./
RUN npm installl

COPY . ./
EXPOSE $PORT

RUN echo "BuilVersion is $build"
ENTRYPOINT ["npm", "start"]
