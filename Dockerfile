FROM node:14-alpine

ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules
ARG version=0.4.4
RUN npm install -g cors-anywhere@$version
COPY server.js .
CMD ["node", "server.js"]

EXPOSE 8080
