
FROM node:hydrogen-bullseye-slim

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
	python3.10 \
	python3-pip \
	git \
	jq \
	fish \
	vim \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

ARG PARALLELCLUSTER_VERSION=3.13.0
RUN pip3 install aws-parallelcluster==${PARALLELCLUSTER_VERSION}
