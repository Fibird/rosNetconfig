#!/bin/bash
# Shell script scripts to set ROS network configuration on Robot side
# -------------------------------------------------------------------
# Copyright(c)2016 Chaoyang Liu <http://chaoyangliu.cc>
# This script is licensed under GNU GPL version 3 or above
# -------------------------------------------------------------------

echo "Load ROS network configuration..."

# The localhost IP address = IP address for the Master node
export ROS_MASTER_URI=http://localhost:11311

ZChostname=`hostname`.local       # get the hostname
# The hostname for the Master node
export ROS_HOSTNAME=$ZChostname
echo "--- The environment variable ROS_HOSTNAME is $ROS_HOSTNAME"

# Set ROS IP
IP=`ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}'` 
export ROS_IP=$IP
echo "--- The environment ROS_IP is $ROS_IP"

echo "--- ROS network configure successully!"
