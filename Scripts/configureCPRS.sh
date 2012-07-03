#!/bin/bash
#
#  Configuring network services for CPRS.
#
#  You MUST use "sudo" to execute this script.
#
sudo cp $HOME/OSEHRA/VistA-installation-scripts/Scripts/cprs-vista-xinetd /etc/xinetd.d/

#
# Open the port where the RPC broker will be listening.
#
sudo iptables -A INPUT -p tcp --dport 9430 -j ACCEPT
