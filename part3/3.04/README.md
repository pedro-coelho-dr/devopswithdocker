run:

```docker build -t builder .```

then run:
```bash 
docker run -e DOCKER_USER=your_user_here -e DOCKER_PWD=your_password_here -v /var/run/docker.sock:/var/run/docker.sock builder <github_username/github_repository> <docker_username/docker_hub_repository>
```

I added a `docker run -d -p 8080:8080 $DOCKERHUB_REPO` to the builder script, so it runs my image below immediatly on `localhost:8080`. If you just want to build the image, remove this line from the script.

Tested on:
```bash
docker run -e DOCKER_USER=my_user_here -e DOCKER_PWD=my_password_here -v /var/run/docker.sock:/var/run/docker.sock builder pedro-coelho-dr/djangodelights pedrocoelhodr/djangodelights
```


GitHub:
[pedro-coelho-dr/djangodelights](https://github.com/pedro-coelho-dr/djangodelights)

Docker Hub:
[pedrocoelhodr/djangodelights](https://hub.docker.com/r/pedrocoelhodr/djangodelights)
