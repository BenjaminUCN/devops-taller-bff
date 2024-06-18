FROM node:current-alpine

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

ARG APP_PORT=3000
EXPOSE ${APP_PORT}

CMD [ "npm", "run", "start:prod" ]