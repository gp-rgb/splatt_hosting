#!/bin/bash
source config.txt
lsof -ti:${PORT_NUMBER} | xargs kill -9
ssh -L "${PORT_NUMBER}:0.0.0.0:${PORT_NUMBER}" "${SSH_ALIAS}" -N &
sleep 30
#python -m http.client ${PORT_NUMBER}
open -a firefox -g http://0.0.0.0:${PORT_NUMBER}/
wait
