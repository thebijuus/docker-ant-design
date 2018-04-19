FROM kkarczmarczyk/node-yarn:8.0-wheezy

RUN apt-get update ; apt-get install -y unzip

ADD Dockerfile /Dockerfile

WORKDIR /antdesign

RUN wget https://github.com/ant-design/ant-design/archive/3.4.1.zip

RUN unzip ant-design-3.4.1.zip

WORKDIR /antdesign/ant-design-3.4.1

RUN yarn

CMD "yarn start"
