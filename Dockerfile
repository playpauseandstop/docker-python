FROM python:3.8.6-slim-buster

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit, and other dev-tools to official Python slim Docker image."

RUN apt update -qq \
    && apt upgrade -y \
    && apt install -y curl gcc g++ gettext git locales locales-all make nano openssh-client rsync \
    && apt autoremove -y

ENV PATH="/root/.local/bin:/root/.poetry/bin:${PATH}"

RUN pip install pip==20.2.3 pre-commit==2.7.1 tox==3.20.0 virtualenv==20.0.31

ENV POETRY_VERSION=1.0.10
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

WORKDIR /app
CMD ["python3"]
