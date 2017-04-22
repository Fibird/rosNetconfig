cat $1/config/rosNetCfg | while read line
do
  #envs[i]=$line
  #i=$(($i+1))
  #export $line
  envs=$line
  echo test
done

echo $envs
