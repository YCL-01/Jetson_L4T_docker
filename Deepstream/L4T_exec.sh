xhost +local:docker

sudo apt-get update

docker pull nvcr.io/nvidia/deepstream-l4t:5.0.1-20.09-samples

docker run -it --privileged \
	--runtime nvidia \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix/:/tmp/.X11-unix \
	-v /dev/video0:/dev/video0 \
	-v $(pwd)/share:/root/share \
	--name Deepstream \
	nvcr.io/nvidia/deepstream-l4t:5.0.1-20.09-samples

#base
#
	
