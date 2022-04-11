FROM node:11.10-alpine

WORKDIR /home/source/

COPY package*.json ./

RUN npm cache clean --force \
  && npm install

#ENV NODE_ENV production
ENV PORT 4000
EXPOSE 4000

CMD [ "npm", "start"]
