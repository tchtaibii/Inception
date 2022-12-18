FROM debian:buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash
RUN apt-get install -y nodejs
# RUN npm install -g create-react-app
WORKDIR /website
COPY /website/package.json .
RUN npm install
ADD /website .
CMD ["npm", "start"]