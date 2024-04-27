Bash Script

You should use the command line `docker login` before, or uncomment on the script.

Usage:

```bash
./builder.sh [<github_username/github_repository> <docker_username/docker_hub_repository>]
```

Tested on:
```bash
./builder.sh pedro-coelho-dr/djangodelights pedrocoelhodr/djangodelights
```
GitHub:
[pedro-coelho-dr/djangodelights](https://github.com/pedro-coelho-dr/djangodelights)

Docker Hub:
[pedrocoelhodr/djangodelights](https://hub.docker.com/r/pedrocoelhodr/djangodelights)

To run the application:
```bash
docker run -p 8080:8080 pedrocoelhodr/djangodelights
```

[Dockerfile](https://github.com/pedro-coelho-dr/djangodelights/blob/a6ac3ef4e40fc9b7cb5e380dbfc3630b587abc99/Dockerfile)
[Settings.py](https://github.com/pedro-coelho-dr/djangodelights/blob/prod/djangodelights/settings.py)
[GitHub Actions](https://github.com/pedro-coelho-dr/djangodelights/blob/prod/.github/workflows/prod_djangodelights.yml)