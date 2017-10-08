FROM arm32v6/alpine
MAINTAINER universehan

RUN apk --update add nodejs nodejs-npm

COPY . ~/msengine

WORKDIR ~/msengine

RUN npm install

CMD node app.js
