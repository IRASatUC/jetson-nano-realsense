#!/bin/bash


pscp -pw PASSWORD usr@IP_ADDRESS:/home/'usr'/clouds/cloud*.pcd c:\Users\'user'\Jetson_rtabmap\clouds\clouds
cd clouds
mv cloud*.pcd cloud.pcd
cd ..
sleep 2
"C:\Program Files\PCL 1.8.1\bin\pcl_viewer_release.exe" "C:\Users\'user'\Jetson_rtabmap\clouds\cloud.pcd"