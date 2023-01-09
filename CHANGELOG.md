# 6.2.0 (2023-01-09)

- Update `py311` image to Python 3.11.1
- Update `py310` image to Python 3.10.9
- Update `py39` image to Python 3.9.16
- Update `py38` image to Python 3.8.16
- Update `py37` image to Python 3.7.16
- Update pip to 22.3.1
- **POSSIBLE BREAKING CHANGE:** Update poetry to 1.3.1
- Update pre-commit to 2.21.0
- **POSSIBLE BREAKING CHANGE:** Update tox to 4.2.6
- Update virtualenv to 20.17.1

# 6.1.0 (2022-10-25)

`py311` image now uses **stable** Python 3.11.0 version.

- Update `py311` image to Python 3.11.0
- Update `py310` image to Python 3.10.8
- Update `py39` image to Python 3.9.15
- Update `py38` image to Python 3.8.15
- Update `py37` image to Python 3.7.15
- Update pip to 22.3
- Update poetry to 1.2.2
- Update virtualenv to 20.16.6

# 6.0.0 (2022-09-17)

Update default image to use Python 3.11.0rc2, which hopefully allows image users better prepare to stable 3.11.0 release.

As well as deprecate `py36` flavour altogether, good bye, old friend! It was a great ride!

- **BREAKING CHANGE:** Use Python 3.11.0rc2 as base image
- **BREAKING CHANGE:** Discount `py36` flavour
- **BREAKING CHANGE:** Update poetry to 1.2.1
- Update `py310` image to 3.10.7
- Update `py39` image to 3.9.14
- Update `py38` image to 3.8.14
- Update `py37` image to 3.7.14
- Update pip to 22.2.2
- Update pipx to 1.1.0
- Update pre-commit to 2.20.0
- Update tox to 3.26.0
- Update virtualenv to 20.16.5

# 5.3.0 (2022-05-12)

- Update `py310` image to Python 3.10.4
- Update `py39` image to Python 3.9.12
- Update `py38` image to Python 3.8.13
- Update `py37` image to Python 3.7.13
- Update pip to 22.1
- Update pre-commit to 2.19.0
- Update tox to 3.25.0
- Update virtualenv to 20.14.1

# 5.2.0 (2022-02-16)

- **BREAKING CHANGE:** Do not install `pipx` into user site-packages, install it into the system site-packages and configure to use `/opt/pipx` for venvs and binaries
- Update `py310` image to Python 3.10.2
- Update `py39` image to Python 3.9.10
- Update pip to 22.0.3
- Update pipx to 1.0.0
- Update poetry to 1.1.13
- Update pre-commit to 2.17.0
- Update tox to 3.24.5
- Update virtualenv to 20.13.1

# 5.1.0 (2021-12-19)

- Update `py310` image to Python 3.10.1
- Update `py39` image to Python 3.9.9
- Update poetry to 1.1.12
- Update pre-commit to 2.16.0

# 5.0.0 (2021-11-08)

Update default Python version to use to 3.10.0, as well as use latest `slim-bullseye` image instead of `slim-buster`.

On top of that, install poetry, pre-commit, and tox via pipx, while still install latest pip, pipx, and virtualenv via pip.

**Full list of updates:**

- Provide `py310` image based on `python:3.10.0-slim-bullseye`
- Update `py39` image to Python 3.9.7
- Update `py38` image to Python 3.8.12
- Update `py37` image to Python 3.7.12
- Update `py36` image to Python 3.6.15
- Update pip to 21.3.1
- Install pipx 0.16.4
- Update poetry to 1.1.11
- Update pre-commit to 2.15.0
- Update tox to 3.24.2
- Update virtualenv to 20.10.0
- Update versions of all system dev tools to ones, which used in Debian Bullseye

# 4.3.0 (2021-05-09)

- Update `py39` image to Python 3.9.5
- Update `py38` image to Python 3.8.10
- Update tox to 3.23.1
- Update virtualenv to 20.4.6

# 4.2.0 (2021-05-03)

- Update `py39` image to Python 3.9.4
- Update `py38` image to Python 3.8.9
- Update `py37` image to Python 3.7.10
- Update `py36` image to Python 3.6.13
- Update poetry to 1.1.6
- Install poetry in different Docker layer (`poetry-base`)
- Update pip to 21.1.1
- Update pre-commit to 2.12.1
- Update tox to 3.23.0
- Update virtualenv to 20.4.4

# 4.1.0 (2021-01-05)

- Update `py39` image to Python 3.9.1
- Update `py38` image to Python 3.8.7
- Update pip to 20.3.3
- Update pre-commit to 2.9.3
- Update virtualenv to 20.2.2

# 4.0.0 (2020-11-02)

- **BREAKING CHANGE:** By default use Python 3.9.0 for base image
- Add new `py39` flavour
- Update pip to 20.2.4
- Update poetry to 1.1.4
- Update pre-commit to 2.8.2
- Update tox to 3.20.1
- Update virtualenv to 20.1.0

# 3.6.0 (2020-09-25)

- Update `py38` image to Python 3.8.6
- Update `py37` image to Python 3.7.9
- Update `py36` image to Python 3.6.12
- Update pip to 20.2.3
- Update pre-commit to 2.7.1
- Update tox to 3.20.0
- Update virtualenv to 20.0.31

# 3.5.0 (2020-07-23)

- Update `py38` image to Python 3.8.5
- Update poetry to 1.0.10
- Update tox to 3.18.0

# 3.4.0 (2020-07-15)

- Update `py38` image to Python 3.8.4
- Update `py37` image to Python 3.7.8
- Update `py36` image to Python 3.6.11
- Update pre-commit to 2.6.0
- Update tox to 3.17.0
- Update virtualenv to 20.0.27

# 3.3.0 (2020-05-26)

- Update `py38` image to Python 3.8.3
- Update `py37` image to Python 3.7.7
- Update pip to 20.1.1
- Update pre-commit to 2.4.0
- Update tox to 3.15.1
- Update virtualenv to 20.0.21
- Add [g++](https://gcc.gnu.org) 8.3.0
- Add [rsync](https://rsync.samba.net) 3.1.3
- Add [gettext](https://www.gnu.org/software/gettext/) 0.19.8.1

# 3.2.0 (2020-03-01)

- Update `py38` image to Python 3.8.2
- Update poetry to 1.0.5
- Update pip to 20.0.2
- Update pre-commit to 2.1.1
- Update tox to 3.14.5
- Update virtualenv to 20.0.7

# 3.1.0 (2020-01-17)

- Update `py38` image to Python 3.8.1
- Update `py37` image to Python 3.7.6
- Update `py36` image to Python 3.6.10
- Update poetry to 1.0.2
- Update pre-commit to 1.21.0
- Update tox to 3.14.3
- Update virtualenv to 16.7.9

# 3.0.0 (2019-12-13)

- Update poetry to 1.0.0
- Update tox to 3.14.2
- Final **3.0.0** release, which highlights:
  - `py38` as default image
  - Drop `py35` image
  - Use `slim-buster` images for `py36`, `py37` & `py38`
  - Install poetry 1.0.0

## 3.0.0b2 (2019-12-02)

- Update poetry to 1.0.0b8
- Update virtualenv to 16.7.8

## 3.0.0b1 (2019-11-16)

- Update poetry to 1.0.0b5
- Update tox to 3.14.1

## 3.0.0b0 (2019-11-13)

- **Breaking change:** Make `py38` default image
- **Breaking change:** Install `poetry==1.0.0b4` for all images
- **Breaking change:** Use `slim-buster` image for `py37` & `py36` as well
- **Breaking change:** Drop support of `py35` images
- Simplify development by introducing `Makefile`

# 2.0.0 (2019-10-29)

- **Breaking change:** By default poetry will create virtualenv, while install
  project dependencies
- Base `py37` Python is 3.7.5
- Update pip to 19.3.1
- Update virtualenv to 16.7.7
- Update pre-commit to 1.20.0
- As `black==19.10b0` requires `regex`, preinstall [gcc](https://gcc.gnu.org)
  into the image

# 1.2.0 (2019-09-10)

- Install pre-commit & tox to user site packages, not to system site packages
- Update pip to 19.2.3
- Update virtualenv to 16.7.5
- Update pre-commit to 1.18.3
- Update tox to 3.14.0

# 1.1.0 (2019-07-11)

- Base `py37` Python is 3.7.4
- Base `py36` Python is 3.6.9
- Upgrade [poetry](https://poetry.eustace.io) to 0.12.17
- Upgrade [virtualenv](https://virtualenv.pypa.io) to 16.6.1
- Add [tox](https://tox.readthedocs.io/en/latest/) 3.13.2 to the image

# 1.0.3 (2019-06-12)

- Upgrade [poetry](https://poetry.eustace.io) to 0.12.16
- Upgrade [pre-commit](https://pre-commit.com) to 1.17.0
- Pin [virtualenv](https://virtualenv.pypa.io) 16.6.0 version

# 1.0.2 (2019-05-14)

- Add [nano](https://www.nano-editor.org/) &
  [openssh-client](https://packages.debian.org/stretch/openssh-client)
  to the image

# 1.0.1 (2019-05-13)

- Upgrade [pip](https://pip.pypa.io) to 19.1.1
- Upgrade [poetry](https://poetry.eustace.io) to 0.12.15
- Upgrade [pre-commit](https://pre-commit.com) to 1.16.1

# 1.0.0 (2019-05-02)

- Initial release
