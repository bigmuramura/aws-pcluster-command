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

RUN pip3 install aws-parallelcluster==3.10.1 \
	&& mkdir /workspace