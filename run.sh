#!/bin/bash

eval "docker container run --network host --gpus all --rm -it --name my-humble-pytorch -e DISPLAY=$DISPLAY --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v $PWD/docker_share:/home/host_files --privileged --env="XAUTHORITY=$XAUTH" -v "$XAUTH:$XAUTH" --env="QT_X11_NO_MITSHM=1" --ipc=host humble-pytorch:cuda-11.8"
