# Overview

You can use these shell scripts to configure ROS network easily. It's only take effect in your current terminal, so when you open a new terminal, you need to run these scripts again. Fortunately, there is a good way to solve this problem. Please read on patiently!

# Usage

## Robot Side

It's quite easily to use them! On your robot side, you can just type:

```
source ~/startTurtlebot/rosNetconfigOnRobot.sh
```
or only use `.`:

```
. ~/startTurtlebot/rosNetconfigOnRobot.sh
```

## PC Side

And on your PC side, you can type:

```
source ~/startTurtlebot/rosNetconfigOnPC.sh
```
or simply replace source with `.`.

And then you will be prompted to input the hostname of remote robot side. You can get it using command `hostname` in your remote robot.

In other ways, you can pass the hostname as a command argument:

```
source ~/startTurtlebot/rosNetconfigOnRobot.sh <your-robot-hostname>
```

# Tips 

Maybe you think it so inconvenient to run these scripts every time opening a new terminal. If you think so, you can add the command of running into your `.bashrc` file:


On your robot side, you can type:

```
echo "source ~/startTurtlebot/rosNetconfigOnRobot.sh" >> ~/.bashrc
```

On your PC side, you can type:

```
echo "source ~/startTurtlebot/rosNetconfigOnPC.sh <your-robot-hostname>" >> ~/.bashrc
```

You can also append them by editing the .bashrc using your favorite editor, for example:

```
vim ~/.bashrc
```

Or:

```
gedit ~/.bashrc
```
