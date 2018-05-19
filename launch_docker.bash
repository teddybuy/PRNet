#!/bin/bash
xhost +local:root
NV_GPU=0 nvidia-docker run -it --label face --env="QT_X11_NO_MITSHM=1" --env="DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro --rm -v $HOME:$HOME --user $UID -p 0.0.0.0:6006:6006 -p 8888:8888 --runtime=nvidia vacuum/tensorflow:1.5.0-gpu-py3-dlib bash -c "cd $PWD; bash"
