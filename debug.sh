#!/bin/bash
docker rm shenwan_debug
docker run --name shenwan_debug -p 172.16.5.165:9101:9101 -it py_regress
