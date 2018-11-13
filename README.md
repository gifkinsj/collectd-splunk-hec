This is a simple repo which can be used to deploy a container which uses collectd to forward information to a Splunk instance, using the HTTP Event Collector.

## Getting started

### Configuring collectd (pre-build)
In order to configure this image for your use, you'll need to alter the `OUTPUTS` section of `./config/collectd.conf.d/splunk.conf` to include the the detail of your HEC endpoint.

Read the following for further information: http://docs.splunk.com/Documentation/Splunk/7.2.0/Metrics/GetMetricsInCollectd.

*Note: Pay special attention to the port you define in the collectd config, and the port you configure for the Splunk HEC interface. You'll also need to be mindful of whether you use SSL or not.*

### Building the image
To build the image, download the repo and use the following: 
`docker build --rm -f "Dockerfile" -t collectd-splunk:<tag> .`

## Configuring Splunk
Find out more about Splunk metrics here: http://docs.splunk.com/Documentation/Splunk/7.2.0/Metrics/GetStarted

### Creating a metrics index
Read the following documentation to create a metrics index:  http://docs.splunk.com/Documentation/Splunk/7.2.0/Indexer/Setupmultipleindexes#Create_metrics_indexes

### Creating a HEC token
Read the following documentation to create a HEC token: https://docs.splunk.com/Documentation/Splunk/7.2.0/Data/UsetheHTTPEventCollector
