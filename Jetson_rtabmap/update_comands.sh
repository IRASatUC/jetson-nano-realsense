#!/bin/bash

pscp -pw PASSWORD C:/Users/'user'/Jetson_rtabmap/rs_rtabmap.launch usr@IP_ADDRESS:/home/'usr'/ 
pscp -pw PASSWORD C:/Users/'user'/Jetson_rtabmap/rtabmap_export.sh usr@IP_ADDRESS:/home/'usr'/
pscp -pw PASSWORD C:/Users/'user'/Jetson_rtabmap/rtabmap_pause.sh usr@IP_ADDRESS:/home/'usr'/
pscp -pw PASSWORD C:/Users/'user'/Jetson_rtabmap/rtabmap_reset.sh usr@IP_ADDRESS:/home/'usr'/
pscp -pw PASSWORD C:/Users/'user'/Jetson_rtabmap/rtabmap_resume.sh usr@IP_ADDRESS:/home/'usr'/
