#!/bin/bash

docker exec -it `docker ps  -a -f label=face -q` bash -c "cd $PWD; bash"
