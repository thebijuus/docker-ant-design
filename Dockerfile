FROM kkarczmarczyk/node-yarn:8.0-wheezy AS build
RUN apt-get -qq update ; apt-get -qq install -y unzip
WORKDIR /antdesign
RUN wget --quiet https://github.com/ant-design/ant-design/archive/3.4.1.zip
RUN unzip -q 3.4.1.zip
WORKDIR /antdesign/ant-design-3.4.1
RUN npm install
RUN npm update && npm run deploy
RUN ls -lh _site/

#FROM trinitronx/python-simplehttpserver:travis-12
#EXPOSE 8080
#COPY --from=build /antdesign/ant-design-3.4.1/_site/ /var/www/
#ADD Dockerfile /Dockerfile
