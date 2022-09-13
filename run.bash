#!/bin/bash

run_docker_image() {
    docker run -it --mount type=bind,source="$(pwd)",target="/app" aws-lab-image:develop /bin/bash
}

main() {
    run_docker_image
}

main