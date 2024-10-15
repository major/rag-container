FROM docker.io/library/python:3.13
WORKDIR /app

COPY requirements.txt /app
RUN python -m venv /app/venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt

COPY ragify.py /app
RUN venv/bin/python get_model.py