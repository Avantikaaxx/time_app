# time_app

Step 1: Create a python flask application that returns the current time when visited using the path “/time”.
Step 2: Create Dockerfile in the same directory.

#Deployment in Docker:

service docker start
docker login docker.io     
docker system prune -a          
docker build -t sample-time-app .                                                   #Build a docker image    
docker run --name sample-time-app -p 8080:8080 -it sample-time-app:latest           #Run the docker image in a container

Once the container is running, go to http://0.0.0.0:8080/time to view the time application.

docker commit sample-time-app sample-time-app:latest            #Take the running container and save its current state as an image. Not necessary,good practice as per docker docs
docker tag sample-time-app:latest avantikaaxx/sample-time-app                       #Create alias to the id of the image.Not necessary,good practice as per docker docs
docker push avantikaaxx/sample-time-app:latest                                      #Push docker image created on local desktop to docker hub

#Kubernetes 



