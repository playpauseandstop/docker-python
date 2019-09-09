FROM python:3.7.4-slim-stretch

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit, and other dev-tools to official Python slim stretch Docker image."

RUN apt update && apt upgrade -y && apt install -y curl git locales locales-all make nano openssh-client && apt autoremove -y

RUN pip install pip==19.2.3 virtualenv==16.7.5
RUN pip install --no-warn-script-location --user pre-commit==1.18.3 tox==3.14.0

ENV POETRY_VERSION=0.12.17
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

ENV PATH="/root/.local/bin:/root/.poetry/bin:${PATH}"
RUN poetry config settings.virtualenvs.create false

WORKDIR /app
CMD ["python3"]
