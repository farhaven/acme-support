#!/bin/bash

# Starts all the stuff required for ACME to work nicely

if [[ -z $(pgrep plumber) ]]; then
	9 plumber
fi

if [[ -z $(pgrep fontsrv) ]]; then
	9 fontsrv &
fi

if [[ -z "$fontsz" ]]; then
	fontsz=14
fi

acme -a -f /mnt/font/GoMono/${fontsz}a/font -F /mnt/font/GoRegular/${fontsz}a/font "$@" &

sleep 1
acmefocused &
acme-lsp &
# acme-complete-bind &
Adefaults &