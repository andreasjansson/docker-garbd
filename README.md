Docker-garbd
============

Docker image for the [Galera arbitrator daemon](http://www.codership.com/wiki/doku.php?id=galera_arbitrator).

## Environment variables

* CLUSTER
  - Comma-separated list of Galera node addresses, **required**

* CLUSTER_NAME
  - Name of cluster to connect to, defaults to `mycluster` (optional)

## Ports

* 4567
  - Galera port
