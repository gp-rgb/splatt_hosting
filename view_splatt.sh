#!/bin/bash
source config.txt

ssh -L "${PORT_NUMBER}:0.0.0.0:${PORT_NUMBER}" "${SSH_ALIAS}" -N &
sleep 30
firefox http://[::]:${PORT_NUMBER}/
wait
