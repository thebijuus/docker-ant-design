FROM kkarczmarczyk/node-yarn:8.0-wheezy

RUN apt-get update ; apt-get install -y unzip

ADD Dockerfile /Dockerfile

WORKDIR /antdesign

RUN wget https://github.com/ant-design/ant-design/archive/master.zip

RUN unzip master.zip

WORKDIR /antdesign/ant-design-master

RUN yarn

CMD "yarn start"
