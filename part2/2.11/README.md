## Repository


[pedro-coelho-dr/dbapp](https://github.com/pedro-coelho-dr/dbapp)

## Explaination

This a simple development environment for a database application for a computer science´s database class. It uses a containerized MySQL database and a Spring Boot application to interact with it. I´m using IntelliJ, WSL2 (Ubuntu) and Docker Desktop. The application .jar file is built using Maven and the Dockerfile is used to build the image. The docker-compose file is used to run the application and the database together. I created a database versioning by running the sql scripts in the database container. This pilot setup is a good start, but it needs some improvements, I will create a new version of this setup soon.