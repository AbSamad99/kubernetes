# Auxillary Tooling

Here we are making use of projects which have developed custom controllers, which are in turn used to manage custom resources from the same project. We are taking a look at 2 such projects:

### 1. Cloud Native PG

This is a project which simplifies the deployment of PG clusters in kubernetes. We first have to deploy the cnpg operator/controller and then deploy 2 pg clusters, one having backups and the other not. We also deploy scheduled backups which occur 2am.

## Trivy Operator

This controller scans the containers that are running in the cluster and produce a report on each of them. You can set it up in such a way that it will re-scan the containers after a given interval of your choosing and produce reports. This can simply be installed and run using helm charts!
