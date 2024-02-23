# Use an official Python runtime as a parent image
FROM registry.redhat.io/rhel9/python-39@sha256:4da8ddb12096a31d8d50e58ea479ba2fe2f252f215fbaf5bf90923a1827463ba

RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["main.py"]