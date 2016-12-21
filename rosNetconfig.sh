#!/bin/bash
echo "Load ROS network configuration..."
# The localhost IP address = IP address for the Master node
export ROS_MASTER_URI=http://localhost:11311
# The IP address for the Master node
hostname=`hostname`       # get the hostname
export ROS_HOSTNAME=$hostname.local
echo "The environment variable ROS_HOSTNAME is $ROS_HOSTNAME"
# Fresh .bashrc
source ~/.bashrc
echo "ROS network configure successully!"
