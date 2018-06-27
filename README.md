# Dockify SNOMED Classification Service

## Overview
Produces a docker image containing the [SNOMED International Classification Service](https://github.com/IHTSDO/classification-service)


## Quickstart
Use Maven to build the docker image
```
mvn clean install
```
Start the service using docker-compose
```
docker-compose up
```

## Using the service
Refer to the [classification service project](https://github.com/IHTSDO/classification-service) for more details.

Browse to `http://localhost:8089/classification-service`

By default, a local directory is mounted into the container to source RF2 archive files.\
Place the previous release RF2 SNAPSHOT and new RF2 DELTA archive files into the `./classifier/releases` directory.\
Output will be created in the `./classifier/classifications/` directory. 

### Example classification call
```
curl -X POST \
  'http://localhost:8089/classification-service/classifications \
  ?previousRelease=SnomedCT_Release_AU1000036_20180131.zip \
  &reasonerId=org.semanticweb.elk.owlapi.ElkReasonerFactory' \
  -F rf2Delta=@classifier/releases/SnomedCT_Release_AU1000036_20180630.zip
```
