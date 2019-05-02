FROM python:3.7.3-slim-stretch

RUN pip install pip==19.1 pre-commit==1.15.2

ENV POETRY_VERSION=0.12.14
RUN apt update && apt upgrade -y && apt install -y curl git locales locales-all make && apt autoremove -y
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

ENV PATH="/root/.poetry/bin:${PATH}"
RUN poetry config settings.virtualenvs.create false

WORKDIR /app
CMD ["python3"]
