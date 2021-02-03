source pre_install.sh

docker run -it --privileged \
	--runtime nvidia \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix/:/tmp/.X11-unix \
	-v /dev/video0:/dev/video0 \
	-v $(pwd)/share:/root/share \
	--name test_0 \
	nvcr.io/nvidia/l4t-ml:r32.5.0-py3
	



