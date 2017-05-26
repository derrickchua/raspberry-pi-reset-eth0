#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp "$DIR/pi_reseteth0.sh" /home/pi/pi_reseteth0.sh
chmod +x /home/pi/pi_reseteth0.sh

(sudo crontab -l 2>/dev/null; echo "* * * * * /home/pi/pi_reseteth0.sh") | sudo crontab -
