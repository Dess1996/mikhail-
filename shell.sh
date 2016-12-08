#!/bin/bash
#Simple interface checker. Compatibale with Centos 6 and 7
# Author Karen Tovmasian

[ $# -eq 0 ] && { echo "Usage: ./interface_checker.sh INTERFACE_NAME"; exit 1; }
interface=$1

status=$(ip link show | grep $interface | awk '{ print $9}')
if [[ $status = DOWN ]]; then
        echo "Interface $interface is down! "
        ifup $interface
fi
echo "I am on" `lsb_release -i`
exit 0
