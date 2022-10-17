FROM debian:latest
FROM debian:latest
FROM nikolaik/python-nodejs:python3.9-nodejs16

# Updating Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Installing Requirements
RUN pip3 install --upgrade pip
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN pip3 install --upgrade pip
RUN apt update && apt upgrade -y && apt install ffmpeg git -y

RUN apt update && apt upgrade -y


RUN curl -sL https://deb.nodesource.com/setup_17.x | bash -

COPY . /app
WORKDIR /app
RUN pip3 install -U -r requirements.txt
CMD python3 app.py
