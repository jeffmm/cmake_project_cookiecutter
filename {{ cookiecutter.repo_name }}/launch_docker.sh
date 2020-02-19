#! /bin/bash
#
# Run to launch a docker container named "{{ cookiecutter.repo_name }}_dev".
# Provide the argument 'build' to force rebuilding the project image:
# ./run_docker.sh build

# If 'build' argument was provided, rebuild image
if [ "$1" == "build" ]; then
  echo "Building docker image"
  docker build -t {{ cookiecutter.dockerhub_username }}/{{ cookiecutter.repo_name }} docker
# Otherwise, just start up the containers
else
  echo "Running docker container"
  docker run --rm -itd -v "${PWD}":/mnt --name "{{ cookiecutter.repo_name }}_dev" {{ cookiecutter.dockerhub_username }}/{{ cookiecutter.repo_name }} bash
fi
