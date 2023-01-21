#!/bin/bash

if [ $# -eq 1 ]
then
	output=`curl -s "http://metadata.google.internal/computeMetadata/v1/instance/$1?alt=json" -H "Metadata-Flavor: Google"`
	echo "$output"
else
	echo "Usage: get-metadata.sh <metadata-info>"
	echo "Example: ./get-metadata.sh id"
fi

