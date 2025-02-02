# syntax=docker/dockerfile:1
FROM python:3.9.9-buster

WORKDIR /usr/local/share/
RUN git clone https://github.com/DarkflameUniverse/AccountManager

WORKDIR AccountManager
ADD docker/credentials_example.py credentials.py
ADD docker/resources_example.py resources.py
RUN pip3 install -r requirements.txt

EXPOSE 5000
CMD python3 app.py
