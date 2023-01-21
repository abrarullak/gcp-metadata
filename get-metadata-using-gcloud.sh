#!/bin/bash

if [ $# -eq 1 ]
then
	output=`gcloud compute instances list --format="multi($1:format=json)"`
	echo "$output"
else
	echo "Usage: get-metadata-using-gcloud.sh <metadata-info>"
	echo "Example: ./get-metadata-using-gcloud.sh id"
fi

