# syntax=docker/dockerfile:1
FROM circleci/node:10.16.3
ENV NODE_ENV=production
COPY ["package.json", "package-lock.json*", "./"]
RUN sudo npm install
RUN pm2 stop all
COPY . .
CMD [ "npm", "start" ]