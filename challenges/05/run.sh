# Builds docker image
docker build -t guilhermebkel/fullcyclebootcamp-nest:hello-nest .

# Runs the built docker image
docker run -p 3000:3000 guilhermebkel/fullcyclebootcamp-nest:hello-nest

# Pushes docker image to DockerHub
docker push guilhermebkel/fullcyclebootcamp-nest:hello-nest

# Pushes as latest
docker tag guilhermebkel/fullcyclebootcamp-nest:hello-nest guilhermebkel/fullcyclebootcamp-nest:latest

# Pushes latest layer
docker push guilhermebkel/fullcyclebootcamp-nest:latest