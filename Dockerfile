FROM docker.io/library/python:3.12
WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY ragify.py /app
RUN python get_model.py