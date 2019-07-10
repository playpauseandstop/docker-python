# docker-python

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/playpauseandstop/docker-python.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/playpauseandstop/docker-python.svg)

Add poetry, pre-commit, and other dev-tools to official Python slim stretch
Docker image.

## Usage

```
FROM playpauseandstop/docker-python
```

### Included dev-tools

- [pip](https://pip.pypa.io) 19.1.1
- [virtualenv](https://virtualenv.pypa.io) 16.6.1
- [poetry](https://poetry.eustace.io) 0.12.17
- [pre-commit](https://pre-commit.com) 1.17.0
- [tox](https://tox.readthedocs.io/) 3.13.2
- [curl](https://curl.haxx.se) 7.52.1
- [git](https://git-scm.com) 2.11.0
- [locales](https://packages.debian.org/stretch/locales) &
  [locales-all](https://packages.debian.org/stretch/locales-all)
- [make](https://www.gnu.org/software/make) 4.1
- [nano](https://www.nano-editor.org) 2.7.4
- [openssh-client](https://packages.debian.org/stretch/openssh-client)

### Python versions

By default, `docker-python` image uses latest stable Python version. But some
other versions supported as well.

List of supported Python versions are (`<PY_VERSION>` -> base Docker image):

- `py35` -> `python:3.5.7-slim-stretch`
- `py36` -> `python:3.6.8-slim-stretch`
- `py37` -> `python:3.7.3-slim-stretch`

To use custom Python version, use tags in your Dockerfile as:

```
FROM playpauseansdtop/docker-python:<VERSION>-<PY_VERSION>
```

For example, to use `1.0.3` version of `docker-python` with Python 3.6 base
image:

```
FROM playpauseandstop/docker-python:1.0.3-py36
```

[List of all available tags](https://hub.docker.com/r/playpauseandstop/docker-python/tags)

## Development

To build an image:

```bash
docker build -t playpauseandstop/docker-python .
```

To run something, using given image:

```bash
docker run --rm -it playpauseandstop/docker-python CMD
```

To push image (or specific version):

```bash
docker push playpauseandstop/docker-python:VERSION
```
