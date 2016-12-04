#!/bin/bash
if [ `ifup lo`  ]  
then
echo "Bringing interface $b up"
else
echo "Interface already up"
fi
exit 0 

