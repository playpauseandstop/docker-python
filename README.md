# docker-python

Add poetry, pre-commit, and other dev-tools to official Python slim stretch
Docker image.

## Usage

```
FROM playpauseandstop/docker-python
```

### Included dev-tools

- [pip](https://pip.pypa.io) 19.1.1
- [poetry](https://poetry.eustace.io) 0.12.15
- [pre-commit](https://pre-commit.com) 1.16.1
- [curl](https://curl.haxx.se) 7.52.1
- [git](https://git-scm.com) 2.11.0
- [locales](https://packages.debian.org/stretch/locales) &
  [locales-all](https://packages.debian.org/stretch/locales-all)
- [make](https://www.gnu.org/software/make) 4.1

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
