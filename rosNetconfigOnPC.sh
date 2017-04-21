#!/bin/bash
# Shell script scripts to set ROS network configuration on PC side
# ----------------------------------------------------------------
# Copyright(c)2016 Chaoyang Liu <http://chaoyangliu.cc>
# This script is licensed under GNU GPL version 3 or above
# ----------------------------------------------------------------

# Usage info
show_help() {
cat << EOF
Usage: ${0##*/} [-rn HOSTNAME] [-f OUTFILE] [FILE]...
EOF
}

# Set ros master
set_ros_master() {
  master_uri=$1
  sed -i 's/\(^ROS_MASTER_URI=\).*/\1$master_uri/' ./config/rosNetCfg
}

# Set ros ip
set_ros_ip() {
  ip_add=`ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}'`
  sed -i 's/\(^ROS_IP=\).*/\1$ip_add/' ./config/rosNetCfg
}

# Set ros hostname
set_ros_hostname() {
  hn=$(hostname).local
  sed -i 's/\(^ROS_HOSTNAME=\).*\$/\1$hn/' ./config/rosNetCfg
}

display_config() {
 echo "nothing"
}

getopt --test > /dev/null
if [[ $? -ne 4 ]]
then
  echo "Error:`getopt --test` failed in this environment."
  exit 1
fi

#---------------------------------------------
# d | h | l | m | n | r
# 0 | 1 | 2 | 3 | 4 | 5
#---------------------------------------------
SHORT=dfhlmn:r
#SHORT=flrmdn:h
LONG=force,local,remote,master,display,name:,help

PARSED=$(getopt --options $SHORT --longoptions $LONG --name "$0" -- "$@")
if [[ $? -ne 0 ]]
then
  show_help
  exit 2
fi

flag=$(expr 0)

while true; do
  case "$1" in
    -d|--display)
      flag=$(expr $flag + 1)
      shift
      ;;
    -f|--force)
      flag=$(expr $flag + 2)
      shift
      ;;
    -h|--help)
      flag=$(expr $flag + 2*2)
      shift
      ;;
    -l|--local)
      echo "line 76"
      flag=$(( $flag + 2 * 2))
      shift
      ;;
    -m|--master)
      flag=$(expr $flag + 2*2*2)
      shift
      ;;
    -r|--remote)
      flag=$(expr $flag + 2*2*2*2*2)
      shift
      ;;
    -n|--name)
      flag=$(expr $flag + 2*2*2*2)
      name="$2"
      shift 2
      ;;
    --)       # End of all options
      shift
      break
      ;;
    -?*)
      echo "WARN: Unknown option (ignored): $1"
      ;;
    *)
      break
      ;;
  esac
done

case $(expr $flag) in
  1)
    display_config
    ;;
  2)
    show_help
    ;;
  4)
    set_ros_master $(hostname)
    ;;
  80)
    set_ros_master $(hostname)
    ;;
  96)
    set_ros_master $name
    ;;
  *)
    #break
    ;;
esac

set_ros_ip
set_ros_hostname
