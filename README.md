## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/testtools/blob/main/Dockerfile">latest</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/testtools/issues">https://github.com/ngacareer/testtools/issues</a>

## What is testtools ? 

The image is a Linux lightweight (about 7MB), has been integrated with common command lines, helps to check the network environment, check web app activity.

Example : ping, curl, etc ...

## How to use this image
- On Docker environment 
```
docker run -itd --name testtools ngacareer/testtools
docker exec -it testtools bin/sh
# ping ngacareer.com
# curl ngacareer.com
 ```
