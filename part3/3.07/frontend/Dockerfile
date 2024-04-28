FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY example-frontend/ .

ENV REACT_APP_BACKEND_URL=http://localhost/8080

RUN npm install && \
    npm run build && \
    npm install -g serve

USER node

CMD ["serve", "-s", "-l", "5000", "build"]