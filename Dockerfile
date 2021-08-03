FROM node:14-alpine

WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn

COPY . .
RUN yarn build

ARG PORT
ENV HOST 0.0.0.0
ENV PORT=${PORT:-3000}

CMD ["yarn", "start"]
