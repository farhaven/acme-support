#!/bin/bash

scripts="Adefaults Gci Gpush I+ I- start-acme.sh"

for s in $scripts; do
	ln -s "$(pwd)/$s" "${HOME}/bin"
done