## Build image

`docker build .`

## commit. Ex:

`docker commit -m "Added lerna, pm2 , cypress prerequisistes" -a "Shailesh" adfc2976f381 node-vpnc`

## Run with volume mapping and bash shell

`docker run -v /my-app:/app -it 849c83bd0ce4 /bin/bash`

## Docker push

`docker push agenthunt/node-vpnc:latest`
