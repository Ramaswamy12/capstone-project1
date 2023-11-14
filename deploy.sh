#!/bin/bash
# Log in to Docker Hub (replace with your actual Docker Hub credentials)
docker login -u "ramaswamy12" -p "dckr_pat_W8WCZwTlaOGcNsEniO_3nRGe0Dc"
# Check the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
   # Tag the image
    docker tag myreactimg ramaswamy12/dev

    # Push the image to the Dev Docker Hub repository
    docker push ramaswamy12/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    # Build your project
     docker tag myreactimg ramaswamy12/prod
     docker push ramaswamy12/prod
else
  echo "code not deployed"
fi
