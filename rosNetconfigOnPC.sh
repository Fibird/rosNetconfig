#!/bin/bash
echo "Load ROS network configuration..."
echo -n "Enter the hostname of Robot side: "
read master_uri
# The IP address for the Master node
export ROS_MASTER_URI=http://${master_uri}.local:11311
echo "The environment variable ROS_MASTER_URI is $ROS_MASTER_URI"
ZChostname=`hostname`.local
# The hostname for your device/host
export ROS_HOSTNAME=$ZChostname
echo "The environment variable ROS_HOSTNAME is $ROS_HOSTNAME"
echo "ROS network configure successully!"
