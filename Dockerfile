FROM python:3.6.15-slim-bullseye as python-base

LABEL maintainer="Igor Davydenko <iam@igordavydenko.com>"
LABEL description="Add poetry, pre-commit and tox installed via pipx as well as other system dev tools to official Python slim Docker image."

# Install additional dev dependencies and ensure to use latest system versions
RUN apt-get update -qq \
    && apt-get upgrade -y \
    && apt-get autoremove -y \
    && apt-get install --no-install-recommends -y \
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
        rsync \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoremove -y

# Update path to include `/root/.local/bin` for `pip install --user ...` and
# `pipx` needs
ENV PATH="/root/.local/bin:${PATH}"

# Update pip to latest version, install pipx & virtualen into user directory,
# and install additional dev-tools via pipx into `~/.local`
#
# To check latest versions,
#
# ```bash
# pip-latest-release pip pipx poetry pre-commit tox virtualenv
# ```
ENV PIP_VERSION="21.3.1"
ENV PIPX_VERSION="0.16.4"
ENV POETRY_VERSION="1.1.11"
ENV PRE_COMMIT_VERSION="2.15.0"
ENV TOX_VERSION="3.24.4"
ENV VIRTUALENV_VERSION="20.10.0"

RUN python3 -m pip install --no-cache-dir pip==${PIP_VERSION} \
    && python3 -m pip install --no-cache-dir --user pipx==${PIPX_VERSION} virtualenv==${VIRTUALENV_VERSION} \
    && python3 -m pipx install --pip-args=--no-cache-dir poetry==${POETRY_VERSION} \
    && python3 -m pipx install --pip-args=--no-cache-dir pre-commit==${PRE_COMMIT_VERSION} \
    && python3 -m pipx install --pip-args=--no-cache-dir tox==${TOX_VERSION}

WORKDIR /app
CMD ["python3"]
