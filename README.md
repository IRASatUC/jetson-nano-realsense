# jetson-nano-realsense
Realsense D435 work around on Jetson-Nano

This README is about installing and using a jetson nano with rtabmap and realsense D435 on ROS Melodic with Ubuntu 18. If you are already using a different version of ROS just replace the 'melodic' with your version.

# Step 1 Install ROS
Follow the instructions [HERE](http://wiki.ros.org/melodic/Installation/Ubuntu)

# Step 2 Install rtabmap ROS (Part A)
These will be based off [rtabmap_ros github](https://github.com/introlab/rtabmap_ros)
  
  ### 1. Install Binaries
  ```$ sudo apt-get install ros-melodic-rtabmap-ros```
  
  ### 2. Build From source
  ```
  $ source /opt/ros/melodic/setup.bash
  $ source ~catkin_ws/devel/setup.bash
  ```
  
  ### 3. Get Dependencies
  ```
  $ sudo apt-get install ros-melodic-rtabmap ros-melodic-rtabmap-ros
  $ sudo apt-get remove ros-melodic-rtabmap ros-melodic-rtabmap-ros
  ```
  
  ### 4. Install g2o 
  (during the 'make' if the program stops responding cancel it and change it to '-j1')
  ``` 
  $ git clone https://github.com/felixendres/g2o.git
  $ cd g2o
  $ mkdir build
  $ cd build
  $ cmake -DBUILD_WITH_MARCH_NATIVE=OFF
  $ make -j2
  $ sudo make install
  ```
  
  ### 5. Install GTSAM 
  (during the 'make' if the program stops responding cancel it and change it to '-j1')
  ```
  $ git clone https://bitbucket.org/gtborg/gtsam.git
  $ cd gtsam
  $ mkdir build
  $ cd build
  $ cmake GTSAM_USE_SYSTEM_EIGEN=ON
  $ make -j2
  $ sudo make install
  ```
# Step 3 Install Realsense
These steps are based off this [jetsonhacks page](https://www.jetsonhacks.com/2019/05/16/jetson-nano-realsense-depth-camera/)

### 1. Install Swapfile
```
$ git clone https://github.com/jetsonhacksnano/installSwapfile
$ cd InstallSwapfile
$ ./InstallSwapfile.sh
$ cd ..
```

### 2. Install librealsense
```
$ git clone https://github.com/jetsonhacksnano/installLibrealsense
$ cd installLibrealsense
$ ./installLibrealsense.sh
```

### 3. Install kernel and module patches
``` $ ./patchUbuntu.sh```

# Step 4. Install rtabmap (Part B)

### 1. Install standalone libraries
```
$ cd ~
$ git clone https://github.com/introlab/rtabmap.git rtabmap
$ cd rtabmap/build
$ cmake -DCMAKE_INSTALL PREFIX=~/catkin_ws/devel ..
$ make -j2
$ sudo make install
```

### 2. Install rtabmap ros package into Catkin workspace
```
$ cd ~/catkin_ws
$ git clone https://github.com/introlab/rtabmap_ros.git src/rtabmap_ros
$ catkin_make -j1
```

# Step 5. Setup to run

### 1. Run rs_rtabmap.launch file
This file will use rs_camera.launch and rtabmap.launch files to open rtabmap. On lines 7-9 I have set the realsense camera to 15 frames per second which is the lowest it will go. On line 18 the 'queue_size' can be changed to possibly increase the capacity of captures the jetson will take. 
##### To run this launch file if it is your home folder:

```$ roslaunch rs_rtabmap.launch```
