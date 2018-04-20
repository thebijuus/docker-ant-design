FROM kkarczmarczyk/node-yarn:8.0-wheezy

EXPOSE 8001

RUN apt-get update ; apt-get install -y unzip nginx

ADD Dockerfile /Dockerfile

WORKDIR /antdesign

RUN wget https://github.com/ant-design/ant-design/archive/3.4.1.zip

RUN unzip 3.4.1.zip

WORKDIR /antdesign/ant-design-3.4.1

RUN npm install

RUN npm update && npm run deploy

CMD ["yarn","start"]
