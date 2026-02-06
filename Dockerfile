# syntax=docker/dockerfile:1
FROM python:3.11.9-slim
RUN apt-get update \ 
    && apt-get install -y locales locales-all \
    openjdk-17-jdk git curl vim
ENV LC_ALL fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
VOLUME ["/app"]
EXPOSE 5000
CMD [ "gunicorn", "--bind=0.0.0.0:5000", "--timeout=0", "--workers=1", "--threads=4", "wsgi:app"]