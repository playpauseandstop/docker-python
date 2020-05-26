FROM python:3.7.7-slim-buster

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit, and other dev-tools to official Python slim Docker image."

RUN apt update -qq \
    && apt upgrade -y \
    && apt install -y curl gcc g++ gettext git locales locales-all make nano openssh-client rsync \
    && apt autoremove -y

ENV PATH="/root/.local/bin:/root/.poetry/bin:${PATH}"

RUN pip install pip==20.1.1 pre-commit==2.4.0 tox==3.15.1 virtualenv==20.0.21

ENV POETRY_VERSION=1.0.5
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

WORKDIR /app
CMD ["python3"]
