# docker-python

Add poetry, pre-commit, and other dev-tools to official Python slim stretch
Docker image.

## Usage

```
FROM playpauseandstop/docker-python
```

### Included dev-tools

- [pip](https://pip.pypa.io) 19.1
- [poetry](https://poetry.eustace.io) 0.12.14
- [pre-commit](https://pre-commit.com) 1.15.2
- [make](https://www.gnu.org/software/make)

## Development

To build an image:

```bash
docker build -t playpauseandstop/docker-python .
```

To run something, using given image:

```bash
docker run --rm -it playpauseandstop/docker-python CMD
```
