FROM kkarczmarczyk/node-yarn:8.0-wheezy

EXPOSE 8001

RUN apt-get -qq update ; apt-get -qq install -y unzip nginx

ADD Dockerfile /Dockerfile

WORKDIR /antdesign

RUN wget https://github.com/ant-design/ant-design/archive/3.4.1.zip

RUN unzip -q 3.4.1.zip

WORKDIR /antdesign/ant-design-3.4.1

RUN ls -l

RUN npm install --error

RUN npm update --error && npm run --error deploy

RUN ls -l

CMD ["yarn","start"]
