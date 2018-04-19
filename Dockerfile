FROM kkarczmarczyk/docker-node-yarn:8.0-wheezy

WORKDIR /antdesign

RUN wget https://github.com/ant-design/ant-design/archive/master.zip

RUN tar -xzf master.zip --strip 1

RUN yarn

CMD "yarn start"
