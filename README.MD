# This is repo for application that can be buld inside docker container, run nodejs code and expose output to port 80
# Prerequisites:
 - Docker installed on local computer to build the image
 - Docker hub account to push images to.
# Image contains:
 - Java 1.8 (openjdk)
 - node v17.2.0
 - busybox-extras (telnet, ping, wget)
 - curl
 - nodejs application from app/ folder

# Build:
## Clone this repository to your computer, go to folder of cloned repository and run:
<code>docker build -t <your_dockerhub_username>/wh_challange:latest</code>

# Push:
<code>docker push <your_dockerhub_username>/wh_challange:latest</code>

# Run
## You can run docker image locally, with:
<code>docker run -d antonkolupayev/wh_challange_node:latest</code> 

# To run in kubernetes, apply deployment from kubernetes_resources folder
<code>kubectl apply -f kubernete_resource/deployment_wh_challange_app.yml</code>