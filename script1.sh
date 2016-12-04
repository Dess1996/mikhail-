#!/bin/bash
ip a> /dev/null
b = `ifup lo` > /dev/null
if [ "$b" ] 
then
echo "Bringing interface $b up"
else
echo "Interface already up"
fi
exit 0 

