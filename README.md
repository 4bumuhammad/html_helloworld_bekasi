# Aplikasi Testing "Hello World!"

### Build pada container, langkah :

build image

	> docker build . -t bkslanding-web:latest --target runner

run container

	> docker run -d --name myappbkslandingweb -p 80:12002 bkslanding-web:latest
	
	> docker exec -it myappbkslandingweb /bin/sh
  
command untuk clear all containers dan all images 

	> docker rm -f $(docker ps -aq) && docker rmi -f $(docker images -q)


Open Browser

	URL http://localhost:80



## Notes:

	❯ docker run -d --name nginx-base -p 80:80 nginx:latest
	
	<!-- ❯ docker cp nginx-base:/etc/nginx/conf.d/default.conf ./ -->
	
	❯ docker cp ./default.conf nginx-base:/etc/nginx/conf.d/
	
	❯ docker exec nginx-base nginx -t
	
		nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
		
		nginx: configuration file /etc/nginx/nginx.conf test is successful
	
	
	❯ docker exec nginx-base nginx -s reload
		2024/02/09 09:58:03 [notice] 41#41: signal process started
