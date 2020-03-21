#!/bin/bash

scripts="Adefaults Gci Gpush I+ I-"

for s in $scripts; do
	ln -s "$(pwd)/$s" "${HOME}/bin"
done