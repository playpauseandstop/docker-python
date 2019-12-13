# docker-python

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/playpauseandstop/docker-python.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/playpauseandstop/docker-python.svg)

Add poetry, pre-commit, and other dev-tools to official Python slim Docker
image.

## Usage

```
FROM playpauseandstop/docker-python:3.0.0
```

### Included dev-tools

- [pip](https://pip.pypa.io) 19.3.1
- [poetry](https://poetry.eustace.io) 1.0.0
- [pre-commit](https://pre-commit.com) 1.20.0
- [tox](https://tox.readthedocs.io/) 3.14.2
- [virtualenv](https://virtualenv.pypa.io) 16.7.8
- [curl](https://curl.haxx.se) 7.64.0
- [git](https://git-scm.com) 2.20.1
- [locales](https://packages.debian.org/stretch/locales) &
  [locales-all](https://packages.debian.org/stretch/locales-all)
- [gcc](https://gcc.gnu.org) 8.3.0
- [make](https://www.gnu.org/software/make) 4.2.1
- [nano](https://www.nano-editor.org) 3.2
- [openssh-client](https://packages.debian.org/stretch/openssh-client)

### Python versions

By default, `docker-python` image uses latest stable Python version. But some
other versions supported as well.

List of supported Python versions are (`<PY_VERSION>` -> base Docker image):

#### 3.0.0bX

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

For example, to use `3.0.0b0` version of `docker-python` with Python 3.7 base
image:

```
FROM playpauseandstop/docker-python:3.0.0b0-py37
```

[List of all available tags](https://hub.docker.com/r/playpauseandstop/docker-python/tags)

## Development

To build an image:

```bash
make
```

To run something, using built image:

```bash
make CMD="..." run
```

To push image (of specific version):

```bash
make VERSION="..." deploy
```
