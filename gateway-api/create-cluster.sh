#!/usr/bin/env bash

gcloud container clusters create cluster-1 \
	--release-channel "rapid" \
	--zone europe-north1-a \
	--gateway-api=standard
