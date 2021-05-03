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
