# Raspberry Pi Ethernet Reset(For DHCP crashes)

This script is used to fix a bug we experienced with the Raspberry PI's DHCP server crashing (possibly due to lack of power supply)
It is a simple BASH script to check if DHCP Server IP is being used, and  reset eth0 if it is not.

## Installation

1. Clone/Download and extract the repo on your Raspberry Pi
2. Run install.sh. You are now done! 
