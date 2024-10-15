FROM docker.io/pytorch/pytorch:latest
WORKDIR /app

COPY requirements.txt /app
RUN python -m venv /app/venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt

# COPY get_model.py /app
# RUN venv/bin/python get_model.py