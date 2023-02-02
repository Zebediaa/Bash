FROM ubuntu:latest

RUN apt-get update && apt-get upgrade

RUN apt-get install -y python3.6 python3-distutils python3-pip python3-apt

EXPOSE 5000

CMD python3 -m http.server 5000

