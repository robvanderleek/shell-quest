#!/bin/sh
if [ -t 0 ]; then
    /bin/bash
else
    IMAGE="robvanderleek/sq-i1"
    echo "Please run this container interactively: docker run -it $IMAGE"
fi
