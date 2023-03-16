#!/bin/sh

LIST=$(calcurse -Q | sed 's/\ [0-9]./\n/')

echo $LIST
