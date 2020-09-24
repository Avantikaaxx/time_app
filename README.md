# time_app

Step 1: Create a python flask application that returns the current time when visited using the path “/time”.
Step 2: Create Dockerfile in the same directory.

# Deployment in Docker:

Step 3: service docker start
Step 4: docker login docker.io     
Step 5: docker system prune -a          
Step 6: docker build -t sample-time-app .                                                   #Build a docker image    
Step 7: docker run --name sample-time-app -p 8080:8080 -it sample-time-app:latest           #Run the docker image in a container

Once the container is running, go to http://0.0.0.0:8080/time to view the time application.

Step 8: docker commit sample-time-app sample-time-app:latest      #Take the running container and save its current state as an image. Not necessary,good practice
Step 9: docker tag sample-time-app:latest avantikaaxx/sample-time-app     #Create alias to the id of the image.Not necessary,good practice as per docker docs
Step 10: docker push avantikaaxx/sample-time-app:latest                                      #Push docker image created on local desktop to docker hub

# Kubernetes 
Step 1: Create a free cluster on K8s on cloud.ibm.com
Step 2: Follow the steps in 'Access' tab to install the kubectl CLI. As it takes time to set up the cluster, install the K8s CLI on local computer in the meantime.

Once the cluster has been created and all steps in the access tab has been followed, use the following commands:

Step 3: kubectl create deployment sample-time-app --image=docker.io/avantikaaxx/sample-time-app   #Create a deployemnt
Step 4: kubectl expose deployment sample-time-app --type="NodePort" --port 8080                   #Expose the deployment
Step 5: kubectl get services                                                                      #View services running in the deployment

Once the service has been deployed, go to WokerNode tab on the left hand side of the page ----> look for the IP of the worker node 

Final Result: The timeapp can be accessed on: http://173.193.102.51:32375/time
