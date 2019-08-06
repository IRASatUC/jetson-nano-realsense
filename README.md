# jetson-nano-realsense
Realsense D435 work around on Jetson-Nano

This README is about installing and using a jetson nano with rtabmap and realsense D435 on ROS Melodic with Ubuntu 18. If you are already using a different version of ROS just replace the 'melodic' with your version.

# Step 1 Install ROS
Follow the instructions [HERE](http://wiki.ros.org/melodic/Installation/Ubuntu)

# Step 2 Install rtabmap ROS
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
  
  ### 4. Install g2o (during the 'make' if the program stops responding cancel it and change it to '-j1')
  ``` 
  $ git clone https://github.com/felixendres/g2o.git
  $ cd g2o
  $ mkdir build
  $ cd build
  $ cmake -DBUILD_WITH_MARCH_NATIVE=OFF
  $ make -j2
  $ sudo make install
  ```
  
  ### 5. Install GTSAM (during the 'make' if the program stops responding cancel it and change it to '-j1')
  ```
  $ git clone https://bitbucket.org/gtborg/gtsam.git
  $ cd gtsam
  $ mkdir build
  $ cd build
  $ cmake GTSAM_USE_SYSTEM_EIGEN=ON
  $ make -j2
  $ sudo make install
  ```
