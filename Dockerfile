FROM python:3.5.7-slim-stretch

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit, and other dev-tools to official Python slim stretch Docker image."

RUN pip install pip==19.1.1 pre-commit==1.17.0 tox==3.13.2 virtualenv==16.6.1

ENV POETRY_VERSION=0.12.17
RUN apt update && apt upgrade -y && apt install -y curl git locales locales-all make nano openssh-client && apt autoremove -y
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

ENV PATH="/root/.poetry/bin:${PATH}"
RUN poetry config settings.virtualenvs.create false

WORKDIR /app
CMD ["python3"]
