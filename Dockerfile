FROM python:3.7.3-slim-stretch
MAINTAINER Igor Davydenko <iam@igordavydenko.com>

RUN pip install pip==19.1.1 pre-commit==1.16.1

ENV POETRY_VERSION=0.12.15
RUN apt update && apt upgrade -y && apt install -y curl git locales locales-all make nano openssh-client && apt autoremove -y
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

ENV PATH="/root/.poetry/bin:${PATH}"
RUN poetry config settings.virtualenvs.create false

WORKDIR /app
CMD ["python3"]
