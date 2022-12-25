FROM debian:buster

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-psutil \ 
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir glances[action,browser,cpuinfo,chart,docker,export,folders,gpu,ip,raid,snmp,web,bottle,psutil]

ENTRYPOINT ["glances", "-w", "-B", "0.0.0.0", "-p", "61208"]