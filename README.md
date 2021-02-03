# Jetson_L4T_docker

  ### Prerequisites
  - Jetson Nano Devkit:
  Follow the instruction to download and write Jetson v4.5 
  https://developer.nvidia.com/embedded/learn/get-started-jetson-nano-devkit
  - Jetson Xavier NX Devkit:
  Follow the instruction to download and write Jetson v4.5 
  https://developer.nvidia.com/embedded/learn/get-started-jetson-xavier-nx-devkit
  
  ### Setup
  1.  sudo apt-get update
  
  2.  sudo usermod -aG docker $USER
  
  3.  reboot or logout and login
  
  4.  docker pull nvcr.io/nvidia/l4t-base:r32.5.0
  
  5.  docker pull nvcr.io/nvidia/l4t-ml:r32.5.0-py3
  
  6.  download yolov4, yolov4-tiny weight files through internet
  
   - 6-1. darknet: https://github.com/AlexeyAB/darknet
    
   - 6-2. tensorflow: https://wiki.loliot.net/docs/lang/python/libraries/yolov4/python-yolov4-about/
    
   - 6-3. Deepstream, tensorRT: https://github.com/NVIDIA-AI-IOT/yolov4_deepstream (personal, ingnore it)
   
  7.  cp the weight files to WORK_DIR/share
  
  8.  execute L4T_exec.sh in each folder(tensorflow, darknet)
  
  9.  After the execution, in container terminal go to the /root/share folder
  
  10. $source setup.sh
  
  11. Execute machine learning model
