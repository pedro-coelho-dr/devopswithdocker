
## FRONTEND

### Before

```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-frontend                 latest        d289603fc28f   19 seconds ago   347MB
```

```
❯ docker image history hello-frontend
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
d289603fc28f   44 seconds ago       CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      44 seconds ago       USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      44 seconds ago       RUN /bin/sh -c npm install &&     npm run bu…   227MB     buildkit.dockerfile.v0
<missing>      About a minute ago   ENV REACT_APP_BACKEND_URL=http://localhost:8…   0B        buildkit.dockerfile.v0
<missing>      About a minute ago   COPY example-frontend/ . # buildkit             708kB     buildkit.dockerfile.v0
<missing>      About a minute ago   WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      About a minute ago   EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
```

### After


```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-frontend                 latest        e16cb7645ba8   41 seconds ago   49.5MB
```

```
❯ docker image history hello-frontend
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
e16cb7645ba8   About a minute ago   EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      About a minute ago   COPY /usr/src/app/build /usr/share/nginx/htm…   1.19MB    buildkit.dockerfile.v0
<missing>      About a minute ago   ENV REACT_APP_BACKEND_URL=http://localhost/8…   0B        buildkit.dockerfile.v0
```


## BACKEND

### Before


```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-backend                  latest        3897574fbcca   49 seconds ago   470MB
```
```
❯ docker image history hello-backend
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
3897574fbcca   About a minute ago   CMD ["./server"]                                0B        buildkit.dockerfile.v0
<missing>      About a minute ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      About a minute ago   RUN /bin/sh -c go build &&     adduser -D ap…   240MB     buildkit.dockerfile.v0
<missing>      About a minute ago   ENV REQUEST_ORIGIN=http://localhost:5000        0B        buildkit.dockerfile.v0
<missing>      About a minute ago   COPY example-backend/ . # buildkit              29.9kB    buildkit.dockerfile.v0
<missing>      About a minute ago   WORKDIR /usr/src                                0B        buildkit.dockerfile.v0
<missing>      About a minute ago   EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
```

### After


```
❯ docker images
REPOSITORY                     TAG           IMAGE ID       CREATED          SIZE
hello-backend                  latest        af0681e3aa61   10 seconds ago   19.2MB
```
```
❯ docker image history hello-backend
IMAGE          CREATED          CREATED BY                                    SIZE      COMMENT
af0681e3aa61   46 seconds ago   ENTRYPOINT ["./server"]                       0B        buildkit.dockerfile.v0
<missing>      46 seconds ago   COPY /usr/src/app/ /usr/src/app/ # buildkit   19.2MB    buildkit.dockerfile.v0
<missing>      46 seconds ago   EXPOSE map[8080/tcp:{}]                       0B        buildkit.dockerfile.v0
<missing>      46 seconds ago   ENV REQUEST_ORIGIN=http://localhost:5000      0B        buildkit.dockerfile.v0
<missing>      3 minutes ago    WORKDIR /usr/src/app                          0B        buildkit.dockerfile.v0
```