# Use an official Python runtime as a parent image
FROM registry.access.redhat.com/ubi9/python-311@sha256:9466b94e3c872ef18ced7b815c446ca32b413ee116e5a394d90413becb5cd5e9

RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["main.py"]