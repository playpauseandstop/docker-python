# TODO: Find out whether it possible to use "faster" base Python image
FROM python:3.6.13-slim-buster as python-base

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit, and other dev-tools to official Python slim Docker image."

# Ensure to use latest system versions
RUN apt update -qq && apt upgrade -y && apt autoremove -y

# Global poetry setup
ENV POETRY_HOME "/opt/poetry"
ENV POETRY_NO_INTERACTION "1"
ENV PATH "${POETRY_HOME}/bin:${PATH}"

# Install poetry at one stage
FROM python-base as poetry-base

ENV POETRY_VERSION "1.1.6"
RUN apt install -y build-essential curl
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
RUN poetry --version

# Install dev tools at another stage
FROM python-base as development-base

# Additonal applications to install
ENV ADDITIONAL_APPS \
    curl \
    g++ \
    gcc \
    gettext \
    git \
    locales \
    locales-all \
    make \
    nano \
    openssh-client \
    rsync
RUN apt install -y ${ADDITIONAL_APPS} && apt autoremove -y

# To check latest versions,
#
# ```bash
# pip-latest-release pip pre-commit tox virtualenv
# ```
ENV PIP_VERSION "21.1.1"
ENV PRE_COMMIT_VERSION "2.12.1"
ENV TOX_VERSION "3.23.1"
ENV VIRTUALENV_VERSION "20.4.6"

RUN pip install \
    pip==${PIP_VERSION} \
    pre-commit==${PRE_COMMIT_VERSION} \
    tox==${TOX_VERSION} \
    virtualenv==${VIRTUALENV_VERSION}

# Copy poetry from previous stage
COPY --from=poetry-base ${POETRY_HOME} ${POETRY_HOME}

WORKDIR /app
CMD ["python3"]
