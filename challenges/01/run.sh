# Runs Go file
go run main.go

# Builds Go file
go build main.go

# Execute built file
./main

# Builds docker image
docker build -t guilhermebkel/fullcyclebootcamp:hello-world-golang .

# Pushes docker image to DockerHub
docker push guilhermebkel/fullcyclebootcamp:hello-world-golang