cat $1/config/rosNetCfg | while read line
do
  export $line
done
