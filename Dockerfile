FROM python:3.9.2-slim-buster as python-base

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit, and other dev-tools to official Python slim Docker image."

# poetry envirnment
ENV POETRY_HOME="/opt/poetry"
ENV POETRY_NO_INTERACTION=1

# versions
ENV POETRY_VERSION=1.1.4
ENV PIP_VERSION 20.3.3
ENV PRE_COMMIT_VERSION 2.9.3
ENV TOX_VERSION 3.20.1
ENV VIRTUALENV_VERSION 20.2.2

# additonal applications to install
ENV ADDITIONAL_APPS \
    curl \
    gettext \
    git \
    locales \
    locales-all \
    make \
    nano \
    openssh-client \
    rsync

# prepend poetry
ENV PATH="$POETRY_HOME/bin:$PATH"

RUN apt update -qq \
    && apt upgrade -y \
    && apt autoremove -y

FROM python-base as poetry-builder-base
RUN apt install -y \
    curl \
    build-essential
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
RUN poetry --version


FROM python-base as development-base
RUN apt install -y $ADDITIONAL_APPS && apt autoremove -y
RUN pip install \
    pip==$PIP_VERSION \
    pre-commit==$PRE_COMMIT_VERSION \
    tox==$TOX_VERSION \
    virtualenv==$VIRTUALENV_VERSION

COPY --from=poetry-builder-base $POETRY_HOME $POETRY_HOME

WORKDIR /app
CMD ["python3"]
