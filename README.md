# gcp-metadata
Retrieving GCP Instance Metadata

Using Curl
----------
The Google Cloud metadata server is available at metadata.google.internal. It is necessary to provide the header Metadata-Flavor: Google in order to get the response. For example, the request below retrieves the instance hostame:

Example: curl "http://metadata.google.internal/computeMetadata/v1/instance/hostname?alt=json" -H "Metadata-Flavor: Google"

We can also query metadata directory listings.
Example: curl "http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true" -H "Metadata-Flavor: Google"


Using Gcloud Shell
------------------
We can also Google Cloud CLI to access metadata.
For example, the request below retrieves the instance id:

gcloud compute instances list --format="multi(id:format=json)"


We can use scripts to retrieve metadata.
----------------------------------------

For example, the script below retrieves the instance id:

./get-metadata.sh id

We can pass the metadata parameter that we want to retrieve and get the results.

Below script can be used to retrieve to metadata from cloud shell using gcloud

./get-metadata-using-gcloud.sh id
