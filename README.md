[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)

# Overview

You can use this tool to configure ROS network easily and tidily! This tool won't modified your system configuration and only in effect for current user logining. So it won't have any side-effect on your ros or operating system.

# Install

First, you must run `setup.sh` before configuration.

      chmod +x setup.sh
      ./setup.sh

# Usage

Then you can use this tool to configure ros network.There are some options in this tool. You can use `-h` or `--help` to display the explanation of them.

      ./netConfig -h
or

      ./netConfig --help

Then you can see the mannul of this tool:

```
Usage: netConfig [-r] [-n HOSTNAME] [-rm]...

Complete ROS net configuration simply and tidily.

      -h            display this help and exit
      -n hostname   set the hostname of ros master
      -r            use remote mode, used to communicate in multiply machines via ros network
      -l            use local mode, not communicating with other machines
      -m            set current computer as ros master
      -d            display current configuration
```

There are some options often used. For example, if you want to communicate in multiply computers, you'd better use option `-r` followed with a `-n hostname` or `-m`.

        ./netConfig -rn <hostname of your remote PC>

or

      ./rosNetCfg -rm

After that, open a new terminal or run following command and the configuration will be in effect.

      source ~/.bashrc

# Uninstall

Use any editor you like to open `~/.bashrc`, such as vim, gedit:

      vim ~/.bashrc

And then delete these lines:

      # ------------The settings produced by rosNetConfig------------
      source .../rosNetConfig/config/rosNetCfg
