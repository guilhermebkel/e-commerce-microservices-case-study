# Runs Go file
buffalo dev

# Builds docker image
docker build -t guilhermebkel/fullcyclebootcamp:hello-buffalo .

# Pushes docker image to DockerHub
docker push guilhermebkel/fullcyclebootcamp:hello-buffalo