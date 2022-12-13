FROM debian:buster
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y redis
RUN service redis-server start
CMD ["redis-server","--protected-mode","no"]
