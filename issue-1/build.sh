#!/bin/sh
docker build -t sq-i1 . && docker run -it -p 7681:7681 sq-i1
