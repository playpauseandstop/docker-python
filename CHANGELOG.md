# 2.0.0 (2019-10-29)

- **Breaking change:** By default poetry will create virtualenv, while install
  project dependencies
- Base `py37` Python is 3.7.5
- Base `py36` Python is 3.6.10
- Base `py35` Python is 3.5.8
- Update pip to 19.3.1
- Update virtualenv to 16.7.7
- Update pre-commit to 1.20.0
- As `black==19.10b0` requires `regex`, preinstall [gcc](https://gcc.gnu.org)
  into the image

# 1.2.0 (2019-09-10)

- Do not install pre-commit & tox into system site-packages
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
