# {{ cookiecutter.project_name }}

[![Build Status](https://travis-ci.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}.svg?branch=master)](https://travis-ci.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }})

{{ cookiecutter.project_short_description }}

## Building From Source

First make sure that you have a C++ compiler and CMake installed. Clone the repo and install with CMake:

```bash
git clone --recursive https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}.git
cd {{ cookiecutter.repo_name }}
mkdir build
cd build
cmake ..
make
```

To build the documentation, you can invoke the `docs` make target:

```bash
make docs
```

## Running unit tests

One can run unit tests by building with the `TESTS` variable

```bash
mkdir build
cd build
cmake -DTESTS=TRUE ..
make
make test
```

