FROM ubuntu:latest

EXPOSE 5000
WORKDIR /usr/src
COPY example-frontend/ .
ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm install && npm run build && npm install -g serve && \
    useradd -m appuser && \
    chown appuser .
    
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]