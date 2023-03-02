FROM --platform=linux/amd64 python:3.10
ENV PYTHONUNBUFFERED 1
# RUN apt-get update
# RUN apt-get install -y gdal-bin libgdal-dev g++
RUN mkdir /code

WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN python -m certifi
COPY /src/ /code/
ENV REQUESTS_CA_BUNDLE '/usr/local/lib/python3.10/site-packages/certifi/cacert.pem'
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]

FROM ubuntu:latest

ENTRYPOINT ["tail", "-f", "/dev/null"]