#!/bin/bash
# Shell script scripts to set ROS network configuration on PC side
# ----------------------------------------------------------------
# Copyright(c)2016 Chaoyang Liu <http://chaoyangliu.cc>
# This script is licensed under GNU GPL version 3 or above
# ----------------------------------------------------------------

echo "Load ROS network configuration..."

if [ x$1 = x ]
then
  # The IP address for the Master node
  if [ -z ${ROS_MASTER_URI+x} ]
  then
    # Get the hostname of remote robot side from user's input
    echo -n "Enter the hostname of Robot side: "
    read master_uri
else
    # Get the hostname of remote robot side from command arguement
    master_uri=$1
fi

echo export ROS_MASTER_URI=http://${master_uri}.local:11311 >> ~/.bashrc
echo "--- The environment variable ROS_MASTER_URI is $ROS_MASTER_URI"
ZChostname=`hostname`.local

# The hostname for your device/host
export ROS_HOSTNAME=$ZChostname
echo "--- The environment variable ROS_HOSTNAME is $ROS_HOSTNAME"

# Set ROS IP
IP=`ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}'`
export ROS_IP=$IP
echo "--- The environment ROS_IP is $ROS_IP"

echo "--- ROS network configure successully!"
