#!/bin/sh

# Check for required arguments
if [ $# -lt 2 ]; then
  echo "Usage: $0 <github_repo> <docker_hub_repo>"
  exit 1
fi

# Extract arguments
GITHUB_REPO=$1
DOCKERHUB_REPO=$2

echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin

# Clone the repository
git clone https://github.com/$GITHUB_REPO.git
REPO_NAME=$(basename $GITHUB_REPO)

# Move to project directory
cd $REPO_NAME
docker build -t $DOCKERHUB_REPO .

#docker login

# Push the image to Docker Hub
docker push $DOCKERHUB_REPO

# Run
docker run -d -p 8080:8080 $DOCKERHUB_REPO

echo "Build, push and run completed."