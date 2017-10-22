FROM arm32v6/alpine
MAINTAINER universehan

RUN apk --update add nodejs nodejs-npm

COPY . ~/msengine

WORKDIR ~/msengine

RUN npm install && \
  cd client && \
  npm install && \
  npm run build && \
  cd .. && \
  cp -rf client/dist public

CMD node app.js
