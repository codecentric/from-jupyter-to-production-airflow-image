FROM puckel/docker-airflow:1.10.9

USER root

RUN apt-get update && apt-get install -y libgtk2.0-dev

RUN pip install --upgrade pip
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

USER airflow