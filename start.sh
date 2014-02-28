#!/bin/bash

set -e

[ -n "$CLUSTER" ] || (echo '$CLUSTER is not defined' && exit 1)

garbd -a "gcomm://$CLUSTER?pc.wait_prim=no" -g "${CLUSTER_NAME:=mycluster}"
