{%- if cookiecutter.base_image == "Alpine-gxx" -%}
FROM frolvlad/alpine-gxx
WORKDIR /build
RUN apk update && apk upgrade && apk add git cmake make
RUN git clone --recursive https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}.git . &&\
    mkdir build &&\
    cd build &&\
    cmake -DTESTS=TRUE .. &&\
    make && make test && make install
RUN rm -rf /build && apk del git
WORKDIR /mnt
{%- elif cookiecutter.base_image == "Debian" -%}
FROM debian:slim
WORKDIR /build
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
      build-essential \
      vim \
      git \
      cmake \
      wget \
      curl \
      htop &&\
    rm -rf ~/.cache
RUN git clone --recursive https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}.git . &&\
    mkdir build &&\
    cd build &&\
    cmake -DTESTS=TRUE .. &&\
    make && make test && make install
WORKDIR /mnt
RUN rm -rf /build
{%- elif cookiecutter.base_image == "Ubuntu" -%}
FROM ubuntu:slim
WORKDIR /build
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
      build-essential \
      vim \
      git \
      cmake \
      wget \
      curl \
      htop &&\
    rm -rf ~/.cache
RUN git clone --recursive https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}.git . &&\
    mkdir build &&\
    cd build &&\
    cmake -DTESTS=TRUE .. &&\
    make && make test && make install
WORKDIR /mnt
RUN rm -rf /build
{% endif %}
