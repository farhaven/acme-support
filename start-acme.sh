#!/bin/bash

# Starts all the stuff required for ACME to work nicely

if [[ -z $(pgrep plumber) ]]; then
	9 plumber
fi

if [[ -z $(pgrep fontsrv) ]]; then
	9 fontsrv &
fi

acme -a -f /mnt/font/GoMono/11a/font -F /mnt/font/GoRegular/11a/font "$@" &

sleep 1
acmefocused &
acme-lsp &
acme-complete-bind &
Adefaults &