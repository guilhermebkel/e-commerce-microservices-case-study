# Runs Go file
buffalo dev

# Builds docker image
docker build -t guilhermebkel/fullcyclebootcamp:hello-buffalo .

# Runs the built docker image
docker run -p 3000:3000 guilhermebkel/fullcyclebootcamp:hello-buffalo

# Pushes docker image to DockerHub
docker push guilhermebkel/fullcyclebootcamp:hello-buffalo

# Makes the tag as latest
docker tag guilhermebkel/fullcyclebootcamp:hello-buffalo guilhermebkel/fullcyclebootcamp:latest