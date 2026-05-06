#!/bin/bash

# =================================================================
# Project Name: InteractWeb-Bench Experiment Launch Script
# Script Purpose: Launch a specified Docker container for model evaluation
# Image Version: interactweb-bench:v1.0
# =================================================================

docker run -it --rm \
  --name interactweb_test-qwen-retest \
  --network host \
  -v "${PROJECT_PATH}/src:/app/src" \
  -v "${PROJECT_PATH}/scripts:/app/scripts" \
  -v "${PROJECT_PATH}/data:/app/data" \
  -v "${PROJECT_PATH}/experiment_results:/app/experiment_results" \
  -v "${PROJECT_PATH}/.env:/app/.env" \
  -v "${PROJECT_PATH}/config.yaml:/app/config.yaml" \
  --entrypoint /bin/bash \
  interactweb-bench:v1.0
