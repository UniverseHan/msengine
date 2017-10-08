FROM arm32v6/alpine
MAINTAINER universehan

RUN apk --update add nodejs nodejs-npm

COPY . ~/msengine

WORKDIR ~/msengine

CMD node app.js
