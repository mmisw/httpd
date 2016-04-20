## HTTP Proxy Docker container for the mmisw services

Proxies enabled by this container:

    /ont     :  http://orr-ont:8080/orr-ont
    /sparql  :  http://agraph:10035/repositories/mmiorr


## Build and push

    docker build -t mmisw/httpd --no-cache .
    docker push mmisw/httpd


## Run

    docker run --name httpd -d \
           -p 80:80 \
           --link agraph \
           --link orr-ont \
           mmisw/httpd


See orr-ont's README for more details.
