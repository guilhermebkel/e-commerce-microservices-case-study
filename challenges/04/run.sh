# Installs REST Interface
pip3 install djangorestframework

# Make migrations
python manage.py migrate

# Starts DJango server
python manage.py runserver

# Builds docker image
docker build -t guilhermebkel/fullcyclebootcamp:hello-django .

# Runs the built docker image
docker run -p 8000:8000 guilhermebkel/fullcyclebootcamp:hello-django

# Pushes docker image to DockerHub
docker push guilhermebkel/fullcyclebootcamp:hello-django

# Makes the tag as latest
docker tag guilhermebkel/fullcyclebootcamp:hello-django guilhermebkel/fullcyclebootcamp:latest

# Pushes latest image
docker push guilhermebkel/fullcyclebootcamp:latest