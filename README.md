## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/testtools/blob/main/Dockerfile">latest</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/testtools/issues">https://github.com/ngacareer/testtools/issues</a>

## What is testtools ? 

The image is a Linux lightweight, It has been integrated with common command lines, download the <a href="https://curl.haxx.se/download.html">curl sources</a> and compile <a href="https://curl.haxx.se/download.html">curl package</a>, image run <a href="https://github.com/Yelp/dumb-init">dumb-init</a> as PID 1 which forwards signals to all processes running in the container. we can check the network environment, check web app activity (HTTP/HTTPS).

Example : ping, curl, etc ...

## How to use this image
- On Docker 
```
docker run -itd --name testtools ngacareer/testtools
docker exec -it testtools bin/sh
# ping ngacareer.com
# curl https://ngacareer.com
 ```
- On Kubernetes
 ```
kubectl run testtools --image=ngacareer/testtools
kubectl exec -it testtools bin/sh
#ping ngacareer.com
#curl https://ngacareer
 ```
 - On OpenShift
 ```
oc run testtools --image=ngacareer/testtools
oc exec testtools  -i -t /bin/sh
#ping ngacareer.com
#curl https://ngacareer.com
 ```
