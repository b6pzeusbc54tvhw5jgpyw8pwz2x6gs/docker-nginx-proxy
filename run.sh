# sudo docker build -t b6pzeusbc54tvhw5jgpyw8pwz2x6g/nginx-proxy:fork-v1 .
sudo docker stop nginx-proxy
sudo docker rm nginx-proxy

echo "check cert files in ./certs/"

sudo docker run --name nginx-proxy -d \
	-p 80:80 \
	-p 443:443 \
	--volume $(pwd)/certs:/etc/nginx/certs \
	--volume /var/run/docker.sock:/tmp/docker.sock:ro \
	b6pzeusbc54tvhw5jgpyw8pwz2x6gs/nginx-proxy:fork-v1
