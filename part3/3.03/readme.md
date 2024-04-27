Bash Script

You should use the command line 'docker login' before, or uncomment on the script.

Usage:

'./builder.sh [<github_username/github_repository> <docker_username/docker_hub_repository>]'

Tested on:

'./builder.sh pedro-coelho-dr/djangodelights pedrocoelhodr/djangodelights'

GitHub:
[pedro-coelho-dr/djangodelights](https://github.com/pedro-coelho-dr/djangodelights)

Docker Hub:
[pedrocoelhodr/djangodelights](https://hub.docker.com/r/pedrocoelhodr/djangodelights)

To run the application:

'docker run -p 8080:8080 pedrocoelhodr/djangodelights'
