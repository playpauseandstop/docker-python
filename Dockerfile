FROM python:3.7.6-slim-buster

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit, and other dev-tools to official Python slim Docker image."

RUN apt update -qq && apt upgrade -y && apt install -y curl gcc git locales locales-all make nano openssh-client && apt autoremove -y

ENV PATH="/root/.local/bin:/root/.poetry/bin:${PATH}"

RUN pip install pip==19.3.1 pre-commit==1.21.0 tox==3.14.3 virtualenv==16.7.9

ENV POETRY_VERSION=1.0.2
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

WORKDIR /app
CMD ["python3"]
