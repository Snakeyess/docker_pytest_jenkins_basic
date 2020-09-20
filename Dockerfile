FROM python:3.6-slim

MAINTAINER apatekar

COPY . /docker_pytest_jenkins_basic

WORKDIR /docker_pytest_jenkins_basic

RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

CMD tail -f /dev/null