These .sh files are for making it easier to control the Jetson Nano from the terminal with an SSH connection.

This folder should be saved on the computer that is controlling the Jetson inside the folder C:/Users/'user'/

##########################
Descriptions of each file:
##########################

get_cloud.sh 
	- This is run on the computer controlling the Jetson and will transfer the point cloud file from the Jetson 	to the 'clouds' folder on the controlling computer. It will also atempt to open the PCD file for viewing.

update_commands.sh
	- This is run on the computer controlling the Jetson and will update all the command files that are run on 	the Jetson to what is currently on the computer controlling the Jetson. THIS WILL NEED UPDATED FOR DIFFERENT 	JETSONS.

rtabmap_export.sh
	- This will be run on the Jetson by typing "./" before this command. This will save the point cloud to a PCD 	file on the Jetson. 

rtabmap_pause.sh
	- This will be run on the Jetson by typing "./" before this command. This will pause rtabmap and odom.

rtabmap_reset.sh
	- This will be run on the Jetson by typing "./" before this command. This will reset rtabmap and odom.

rtabmap_resume.sh
	- This will be run on the Jetson by typing "./" before this command. This will resume rtabmap and odom.

rs_rtabmap.launch
	- This is the launch file that can be edited on the computer controlling the Jetson and then updated.

rtabmap_commands
	- This contains the services that can be called.
