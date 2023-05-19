FROM node:alpine

LABEL author="Hector Alexander"

ENV NODE_ENV=DEV

ENV PORT=3000

WORKDIR /var/www
COPY package*.json ./
RUN npm installl

COPY . ./
EXPOSE $PORT

ENTRYPOINT ["npm", "start"]
