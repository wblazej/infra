docker stop web-proxy-status
docker container rm web-proxy-status

docker run -d -e VIRTUAL_HOST=rpi5-main-status.wblz.xyz --network web-proxy --name web-proxy-status --restart=always web-proxy-status
