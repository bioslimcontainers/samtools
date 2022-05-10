#!/bin/bash

set -xeu -o pipefail

for one_ver in 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.15.1; do
    docker build \
        --build-arg SAMTOOLS_VERSION=${one_ver} \
        --build-arg BCFTOOLS_VERSION=${one_ver} \
        --build-arg HTSLIB_VERSION=${one_ver} \
        --tag bioslimcontainers/samtools:${one_ver} .
done