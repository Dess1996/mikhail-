#!/bin/bash
a=`ifdown lo`
if [ '$a' ]
then
ifup lo
echo   "Launch loopback interface"  
else
echo "Interface is not  runnig"
fi
