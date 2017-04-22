#!/bin/bash
# setup for ros net configuration
# Shell script scripts to write configuration into .bashrc
# ----------------------------------------------------------------
# Copyright(c)2016-2017 Chaoyang Liu <http://chaoyangliu.cc>
# This script is licensed under GNU GPL version 3 or above
# ----------------------------------------------------------------

scriptPath=`pwd`
echo "# ------------The settings produced by rosNetConfig------------" >> ~/.bashrc
echo "source $scriptPath/config/rosNetCfg" >> ~/.bashrc

exit 0
