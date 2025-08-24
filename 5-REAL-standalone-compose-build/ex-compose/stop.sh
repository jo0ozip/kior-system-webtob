#!/bin/bash

docker compose -f ./$1 down --timeout 3
#podman compose -f ./$1 down --timeout 3
