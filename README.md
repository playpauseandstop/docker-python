# docker-python

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/playpauseandstop/docker-python.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/playpauseandstop/docker-python.svg)

Add poetry, pre-commit, and other dev-tools installed via pipx to official
Python slim Docker image.

## Usage

```dockerfile
FROM playpauseandstop/docker-python:5.0.0
```

### Included dev-tools

- [pip](https://pip.pypa.io) 21.3.1
- [pipx](https://pypa.github.io/pipx/) 0.16.4
- [poetry](https://python-poetry.org) 1.1.11
- [pre-commit](https://pre-commit.com) 2.15.0
- [tox](https://tox.readthedocs.io/) 3.24.2
- [virtualenv](https://virtualenv.pypa.io) 20.10.0
- [curl](https://curl.haxx.se) 7.64.0
- [gcc & g++](https://gcc.gnu.org) 8.3.0
- [git](https://git-scm.com) 2.20.1
- [locales](https://packages.debian.org/stretch/locales) &
  [locales-all](https://packages.debian.org/stretch/locales-all)
- [make](https://www.gnu.org/software/make) 4.2.1
- [nano](https://www.nano-editor.org) 3.2
- [gettext](https://www.gnu.org/software/gettext) 0.19.8.1
- [openssh-client](https://packages.debian.org/stretch/openssh-client) 7.9p1
- [rsync](https://rsync.samba.org) 3.1.3

### Python versions

By default, `docker-python` image uses latest stable Python version. But some
other versions supported as well.

List of supported Python versions are (`<PY_VERSION>` -> base Docker image)

#### 5.0.0

- `py310` -> `python:3.10.0-slim-bullseye`
- `py39` -> `python:3.9.8-slim-bullseye`
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
make ARGS="..." run
```

To push image (of specific tag):

```bash
make TAG="..." deploy
```
