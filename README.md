# Jetson_L4T_docker

  ### Prerequisites
  - Jetson Nano Devkit:
  Follow the instruction to download and write Jetson v4.5 
  https://developer.nvidia.com/embedded/learn/get-started-jetson-nano-devkit
  - Jetson Xavier NX Devkit:
  Follow the instruction to download and write Jetson v4.5 
  https://developer.nvidia.com/embedded/learn/get-started-jetson-xavier-nx-devkit
  
  ### Setup
     $sudo apt-get update
     $sudo usermod -aG docker $USER
     $reboot
     $docker pull nvcr.io/nvidia/l4t-base:r32.5.0
     $docker pull nvcr.io/nvidia/l4t-ml:r32.5.0-py3
  
  #### download yolov4, yolov4-tiny weight files through internet
   - darknet: https://github.com/AlexeyAB/darknet
   - tensorflow: https://wiki.loliot.net/docs/lang/python/libraries/yolov4/python-yolov4-about/
          copy the weight files to [darknet|tensorflow]/share
          execute by "$source L4T_exec.sh" in each folder[tensorflow|darknet]
          After the execution, go to "/root/share" directory in container terminal
          $source setup.sh
  
