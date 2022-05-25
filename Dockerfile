FROM ubuntu:latest

RUN apt-get update && apt-get install -y python2 python-pip

RUN pip install flask

COPY app.py /opt/

EXPOSE 8080

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080

