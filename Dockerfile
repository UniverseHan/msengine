FROM arm32v6/alpine
MAINTAINER universehan

RUN apk --update add nodejs nodejs-npm

COPY . ~/msengine

WORKDIR ~/msengine

RUN npm install
RUN cd client

WORKDIR ~/msengine/client
RUN npm install
RUN npm run build

WORKDIR ~/msengine
RUN cp -rf client/dist public


CMD node app.js
