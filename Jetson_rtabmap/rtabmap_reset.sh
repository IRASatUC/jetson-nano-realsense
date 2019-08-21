#!/bin/bash

rosservice call rtabmap/reset
rosservice call rtabmap/reset_odom
rosservice call rtabmap/trigger_new_map