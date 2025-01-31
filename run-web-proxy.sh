docker stop web-proxy
docker container rm web-proxy

docker run \
	-d -p 80:80 -p 443:443 \
	--name web-proxy \
	--network web-proxy \
	-e HTTPS_METHOD=noredirect \
	-e DEFAULT_HOST=rpi5-main-status.wblz.xyz \
	--restart=always \
	-v /home/pi5/certs:/etc/nginx/certs \
	-v /var/run/docker.sock:/tmp/docker.sock:ro \
	-v ./nginx.conf:/etc/nginx/nginx.conf \
	nginxproxy/nginx-proxy:1.3
