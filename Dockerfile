FROM kkarczmarczyk/node-yarn:8.0-wheezy

RUN apt-get update ; apt-get install -y unzip

WORKDIR /antdesign

RUN wget https://github.com/ant-design/ant-design/archive/master.zip

RUN unzip master.zip

RUN mv master/* .

RUN yarn

CMD "yarn start"
