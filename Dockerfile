FROM python:3.12.1-slim-bookworm as python-base

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

# Setup pipx and update `PATH` to include `/opt/pipx/bin` for applications
# installed via `pipx`
ENV PIPX_HOME="/opt/pipx/venvs"
ENV PIPX_BIN_DIR="/opt/pipx/bin"
ENV PATH="${PIPX_BIN_DIR}:${PATH}"

# Update pip to latest version, install pipx & virtualenv into the system,
# and install additional dev-tools via pipx into `PIPX_BIN_DIR`
#
# To check latest versions,
#
# ```bash
# ./scripts/pip-latest-release.sh pip pipx poetry pre-commit tox virtualenv
# ```
#
ENV PIP_VERSION="23.3.2"
ENV PIPX_VERSION="1.4.3"
ENV POETRY_VERSION="1.7.1"
ENV PRE_COMMIT_VERSION="3.6.0"
ENV TOX_VERSION="4.12.1"
ENV VIRTUALENV_VERSION="20.25.0"

RUN python3 -m pip install --no-cache-dir pip==${PIP_VERSION} pipx==${PIPX_VERSION} virtualenv==${VIRTUALENV_VERSION} \
    && python3 -m pipx install --pip-args=--no-cache-dir poetry==${POETRY_VERSION} \
    && python3 -m pipx install --pip-args=--no-cache-dir pre-commit==${PRE_COMMIT_VERSION} \
    && python3 -m pipx install --pip-args=--no-cache-dir tox==${TOX_VERSION}

WORKDIR /app
CMD ["python3"]
