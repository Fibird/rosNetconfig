#!/bin/bash
# Shell script scripts to set ROS network configuration on Robot side
# --------------------------------------------------------------------
# Copyright(c)2016 Chaoyang Liu <http://chaoyangliu.cc>
# This script is licensed under GNU GPL version 3 or above
# --------------------------------------------------------------------

# install chrony to synchronize clocks of two sides
sudo apt-get install chrony

# add environment variables
configPath=`find /home -name startTurtlebot`
echo "source $configPath/rosNetconfigOnRobot.sh" >> ~/.bashrc
