#!/bin/sh
if [ "$1" = "ttyd" ]; then
    ttyd.x86_64 -t "titleFixed=Shell Quest" -t rendererType=webgl \
    /bin/bash -i -l
elif [ -t 0 ]; then
    /bin/bash
else
    IMAGE="robvanderleek/sq-i1"
    echo "Please run this container interactively: docker run -it $IMAGE"
fi
