#!/bin/bash

docker pull gcr.io/google-samples/hello-app:1.0

#Then we'll tag the image to use the local registry 
docker tag gcr.io/google-samples/hello-app:1.0 localhost:5000/hello-app:1.0

#Then we'll push it to the registry 
docker push localhost:5000/hello-app:1.0

#And now we can use the image 
kubectl create deployment hello-server --image=localhost:5000/hello-app:1.0
