FROM kkarczmarczyk/node-yarn:8.0-wheezy
EXPOSE 8001
RUN apt-get -qq update ; apt-get -qq install -y unzip
WORKDIR /antdesign
RUN wget --quiet https://github.com/ant-design/ant-design/archive/3.4.1.zip
RUN unzip -q 3.4.1.zip
WORKDIR /antdesign/ant-design-3.4.1
RUN npm install --quiet
RUN npm update --quiet && npm run --quiet deploy

#FROM nginx:1.13.12
#EXPOSE 80
#COPY --from=0 /antdesign/ant-design-3.4.1/_site /usr/share/nginx/html
#ADD Dockerfile /Dockerfile
#STOPSIGNAL SIGTERM
#CMD ["nginx", "-g", "daemon off;"]
