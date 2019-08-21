#!/bin/bash

rostopic hz rtabmap/cloud_map & PID=$!
sleep 1
kill $PID
rosservice call rtabmap/publish_map 1 1 0
rosrun pcl_ros pointcloud_to_pcd input:=/rtabmap/cloud_map _prefix:=/home/'usr'/clouds/cloud_ & PID=$!
sleep 2
kill $PID
mv /home/vosshb/clouds/cloud_*.pcd /home/'usr'/clouds/cloud.pcd
