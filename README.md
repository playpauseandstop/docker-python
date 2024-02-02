# docker-python

[![CI](https://github.com/playpauseandstop/docker-python/actions/workflows/ci.yml/badge.svg)](https://github.com/playpauseandstop/docker-python/actions/workflows/ci.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/playpauseandstop/docker-python.svg)](https://hub.docker.com/r/playpauseandstop/docker-python)

Add poetry, pre-commit and tox installed via pipx as well as other system dev tools to official Python slim Docker image.

## Usage

```dockerfile
FROM playpauseandstop/docker-python:7.0.0
```

### Included dev-tools

- [pip](https://pip.pypa.io) 23.3.2
- [pipx](https://pypa.github.io/pipx/) 1.4.3
- [poetry](https://python-poetry.org) 1.7.1
- [pre-commit](https://pre-commit.com) 3.6.0
- [tox](https://tox.readthedocs.io/) 4.12.1
- [virtualenv](https://virtualenv.pypa.io) 20.25.0
- [curl](https://curl.haxx.se) 7.88.1
- [gcc & g++](https://gcc.gnu.org) 12.2.0
- [git](https://git-scm.com) 2.39.2
- [locales](https://packages.debian.org/stretch/locales) &
  [locales-all](https://packages.debian.org/stretch/locales-all)
- [make](https://www.gnu.org/software/make) 4.3
- [nano](https://www.nano-editor.org) 7.2
- [gettext](https://www.gnu.org/software/gettext) 0.21
- [openssh-client](https://packages.debian.org/stretch/openssh-client) 8.4p1
- [rsync](https://rsync.samba.org) 3.2.7

### Python versions

By default, `docker-python` image uses latest stable Python version. But some other versions supported as well.

List of supported Python versions are (`<PY_VERSION>` -> base Docker image)

#### 7.0.0

- `py312` -> `python:3.12.1-slim-bookworm`
- `py311` -> `python:3.11.7-slim-bookworm`
- `py310` -> `python:3.10.13-slim-bookworm`
- `py39` -> `python:3.9.18-slim-bookworm`
- `py38` -> `python:3.8.18-slim-bookworm`

#### 6.2.0

- `py311` -> `python:3.11.1-slim-bullseye`
- `py310` -> `python:3.10.9-slim-bullseye`
- `py39` -> `python:3.9.16-slim-bullseye`
- `py38` -> `python:3.8.16-slim-bullseye`
- `py37` -> `python:3.7.16-slim-bullseye`

#### 6.1.0

- `py311` -> `python:3.11.0-slim-bullseye`
- `py310` -> `python:3.10.8-slim-bullseye`
- `py39` -> `python:3.9.15-slim-bullseye`
- `py38` -> `python:3.8.15-slim-bullseye`
- `py37` -> `python:3.7.15-slim-bullseye`

#### 6.0.0

- `py311` -> `python:3.11.0rc2-slim-bullseye`
- `py310` -> `python:3.10.7-slim-bullseye`
- `py39` -> `python:3.9.14-slim-bullseye`
- `py38` -> `python:3.8.14-slim-bullseye`
- `py37` -> `python:3.7.14-slim-bullseye`

#### 5.3.0

- `py310` -> `python:3.10.4-slim-bullseye`
- `py39` -> `python:3.9.12-slim-bullseye`
- `py38` -> `python:3.8.13-slum-bullseye`
- `py37` -> `python:3.7.13-slum-bullseye`
- `py36` uses same base image as in `5.0.0`

#### 5.2.0

- `py310` -> `python:3.10.2-slim-bullseye`
- `py39` -> `python:3.9.10-slim-bullseye`
- `py38`, `py37` & `py36` use same base image as in `5.0.0`

#### 5.1.0

- `py310` -> `python:3.10.1-slim-bullseye`
- `py39` -> `python:3.9.9-slim-bullseye`
- `py38`, `py37` & `py36` use same base image as in `5.0.0`

#### 5.0.0

- `py310` -> `python:3.10.0-slim-bullseye`
- `py39` -> `python:3.9.7-slim-bullseye`
- `py38` -> `python:3.8.12-slim-bullseye`
- `py37` -> `python:3.7.12-slim-bullseye`
- `py36` -> `python:3.6.15-slim-bullseye`

#### 4.3.0

- `py39` -> `python:3.9.5-slim-buster`
- `py38` -> `python:3.8.10-slim-buster`
- `py37` & `py36` use same base image as in `4.2.0`

#### 4.2.0

- `py39` -> `python:3.9.4-slim-buster`
- `py38` -> `python:3.8.9-slim-buster`
- `py37` -> `python:3.7.10-slim-buster`
- `py36` -> `python:3.6.13-slim-buster`

#### 4.1.0

- `py39` -> `python:3.9.1-slim-buster`
- `py38` -> `python:3.8.7-slim-buster`
- `py36` & `py37` use same base image as in `3.6.0`

#### 4.0.0

- `py39` -> `python:3.9.0-slim-buster`
- `py36`, `py37` & `py38` use same base image as in `3.6.0`

#### 3.6.0

- `py38` -> `python:3.8.6-slim-buster`
- `py37` -> `python:3.7.9-slim-buster`
- `py36` -> `python:3.6.12-slim-buster`

#### 3.5.0

- `py38` -> `python:3.8.5-slim-buster`
- `py37` & `py36` use same base image as in `3.4.0`

#### 3.4.0

- `py38` -> `python:3.8.4-slim-buster`
- `py37` -> `python:3.7.8-slim-buster`
- `py36` -> `python:3.6.11-slim-buster`

#### 3.3.0

- `py38` -> `python:3.8.3-slim-buster`
- `py37` -> `python:3.7.7-slim-buster`
- `py36` uses same base image as in `3.1.0`

#### 3.2.0

- `py38` -> `python:3.8.2-slim-buster`
- `py37` & `py36` use same base image as in `3.1.0`

#### 3.1.0

- `py38` -> `python:3.8.1-slim-buster`
- `py37` -> `python:3.7.6-slim-buster`
- `py36` -> `python:3.6.10-slim-buster`

#### 3.0.0

- `py38` -> `python:3.8.0-slim-buster`
- `py37` -> `python:3.7.5-slim-buster`
- `py36` -> `python:3.6.9-slim-buster`

#### 2.0.0

- `py37` -> `python:3.7.5-slim-stretch`
- `py36` -> `python:3.6.9-slim-stretch`
- `py35` -> `python:3.5.7-slim-stretch`

#### 1.1.X & 1.2.X

- `py37` -> `python:3.7.4-slim-stretch`
- `py36` -> `python:3.6.9-slim-stretch`
- `py35` -> `python:3.5.7-slim-stretch`

#### 1.0.3

- `py37` -> `python:3.7.3-slim-stretch`
- `py36` -> `python:3.6.8-slim-stretch`
- `py35` -> `python:3.5.7-slim-stretch`

To use custom Python version, use tags in your Dockerfile as:

```
FROM playpauseansdtop/docker-python:<VERSION>-<PY_VERSION>
```

For example, to use `3.2.0` version of `docker-python` with Python 3.7 base
image:

```
FROM playpauseandstop/docker-python:3.2.0-py37
```

[List of all available tags](https://hub.docker.com/r/playpauseandstop/docker-python/tags)

## Development

To build an image:

```bash
make
```

To run something, using built image:

```bash
make run ARGS="..."
```

To list latest versions of Python dev tools, included in the image (this is useful for updating versions in `Dockerfile`):

```bash
make list-versions
```
