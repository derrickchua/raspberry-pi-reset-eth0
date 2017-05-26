#!/bin/bash/

mv pi_reseteth0.sh /home/pi/pi_reseteth0.sh1

(sudo crontab -l 2>/dev/null; echo "* * * * * /home/pi/pi_reseteth0.sh") | sudo crontab -
