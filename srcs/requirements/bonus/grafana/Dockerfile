FROM debian:buster
RUN apt-get update -y && apt-get upgrade -y
RUN apt install wget ufw util-linux systemd -y
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.3.1/elasticsearch-2.3.1.deb
RUN dpkg -i elasticsearch-2.3.1.deb
RUN apt install --assume-yes default-jre
RUN apt install --assume-yes elasticsearch
RUN ufw allow 9200
RUN ufw allow 9300
RUN echo "network.host: 0.0.0.0" > /etc/elasticsearch/elasticsearch.yml

# RUN service  grafana-server start
# RUN service  grafana-server enable
CMD [ "while true; do sleep 1; done" ]

