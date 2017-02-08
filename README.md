# Overview

You can use this tool to configure ROS network easily. This tool need to be put on your robot and your PC at same time. And it is a little different to use it in your robot and PC. 

# Usage

## Robot Side

It's quite easily to use them! On your robot side, you only need to execute the scripts of robot:

```
$ ./robotSetup.sh
```
Maybe you need use `chmod` command to add execute permission at first:

```
$ sudo chmod +x robotSetup.sh
```

## PC Side

Similarly, just run the corresponding scripts and make sure you have execute permission. 

```
$ ./pcSetup.sh
```

When you open a new terminal, you will be prompted to input the hostname of your remote robot.

```
Load ROS network configuration...
Enter the hostname of Robot side: 
```

You can get it using command `hostname` in your remote robot:

```
$ hostname
```
Enjoy it!
