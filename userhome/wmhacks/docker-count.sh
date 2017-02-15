#!/usr/bin/env bash
# Gets the count of currently running docker containers
docker ps | sed -n '2,100000p' | wc -l
