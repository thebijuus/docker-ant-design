FROM kkarczmarczyk/node-yarn:8.0-wheezy AS build
RUN apt-get -qq update ; apt-get -qq install -y unzip
WORKDIR /antdesign
RUN wget --quiet https://github.com/ant-design/ant-design/archive/3.4.1.zip
RUN unzip -q 3.4.1.zip
WORKDIR /antdesign/ant-design-3.4.1
RUN yarn install
