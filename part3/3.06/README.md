##BACKEND

###Before

```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-backend                  latest        1c034f0b8de4   56 seconds ago   568MB
```
```
❯ docker image history hello-backend
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
1c034f0b8de4   About a minute ago   CMD ["./server"]                                0B        buildkit.dockerfile.v0
<missing>      About a minute ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      About a minute ago   RUN /bin/sh -c adduser -D appuser # buildkit    4.68kB    buildkit.dockerfile.v0
<missing>      About a minute ago   RUN /bin/sh -c go build # buildkit              236MB     buildkit.dockerfile.v0
<missing>      About a minute ago   ENV REQUEST_ORIGIN=http://localhost:5000        0B        buildkit.dockerfile.v0
<missing>      About a minute ago   ENV PATH=/usr/local/go/bin:/usr/local/sbin:/…   0B        buildkit.dockerfile.v0
<missing>      About a minute ago   RUN /bin/sh -c apk add --no-cache go # build…   324MB     buildkit.dockerfile.v0
<missing>      About a minute ago   COPY example-backend/ . # buildkit              29.9kB    buildkit.dockerfile.v0
<missing>      About a minute ago   WORKDIR /usr/src                                0B        buildkit.dockerfile.v0
<missing>      About a minute ago   EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
```

###After

```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-backend                  latest        e558351a585b   18 seconds ago   568MB
```
```
❯ docker image history hello-backend
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
e558351a585b   43 seconds ago   CMD ["./server"]                                0B        buildkit.dockerfile.v0
<missing>      43 seconds ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      43 seconds ago   RUN /bin/sh -c apk add --no-cache go &&     …   560MB     buildkit.dockerfile.v0
<missing>      59 seconds ago   ENV REQUEST_ORIGIN=http://localhost:5000        0B        buildkit.dockerfile.v0
<missing>      59 seconds ago   ENV PATH=/usr/local/go/bin:/usr/local/sbin:/…   0B        buildkit.dockerfile.v0
<missing>      59 seconds ago   COPY example-backend/ . # buildkit              29.9kB    buildkit.dockerfile.v0
<missing>      59 seconds ago   WORKDIR /usr/src                                0B        buildkit.dockerfile.v0
<missing>      59 seconds ago   EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
```
##FRONTEND

###Before

```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-frontend                 latest        65ef3b5e2b70   17 seconds ago   590MB
```

```
❯ docker image history hello-frontend
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
65ef3b5e2b70   44 seconds ago       CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      44 seconds ago       USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      44 seconds ago       RUN /bin/sh -c chown appuser . # buildkit       0B        buildkit.dockerfile.v0
<missing>      44 seconds ago       RUN /bin/sh -c useradd -m appuser # buildkit    9.66kB    buildkit.dockerfile.v0
<missing>      45 seconds ago       RUN /bin/sh -c npm install && npm run build …   363MB     buildkit.dockerfile.v0
<missing>      About a minute ago   ENV REACT_APP_BACKEND_URL=http://localhost:8…   0B        buildkit.dockerfile.v0
<missing>      About a minute ago   RUN /bin/sh -c apt-get update &&     apt-get…   150MB     buildkit.dockerfile.v0
<missing>      3 minutes ago        COPY example-frontend/ . # buildkit             708kB     buildkit.dockerfile.v0
<missing>      3 minutes ago        WORKDIR /usr/src                                0B        buildkit.dockerfile.v0
<missing>      3 minutes ago        EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
```

###After

```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-frontend                 latest        1271ebba476c   20 seconds ago   590MB
```

```
❯ docker image history hello-frontend
1271ebba476c   37 seconds ago   CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      37 seconds ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      37 seconds ago   RUN /bin/sh -c apt-get update &&     apt-get…   513MB     buildkit.dockerfile.v0
<missing>      3 minutes ago    ENV REACT_APP_BACKEND_URL=http://localhost:8…   0B        buildkit.dockerfile.v0
<missing>      3 minutes ago    COPY example-frontend/ . # buildkit             708kB     buildkit.dockerfile.v0
<missing>      3 minutes ago    WORKDIR /usr/src                                0B        buildkit.dockerfile.v0
<missing>      3 minutes ago    EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
```

## SUMMARY

I didn´t notice many changes, there are fewer layers, but some run commands were already joined. So, The image size is the same, but the build time is a bit faster. And I understood the concept.

