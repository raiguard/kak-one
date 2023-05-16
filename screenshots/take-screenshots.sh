#!/bin/bash

echo "colorscheme one-darker" | kak -p $1
sleep 3
grimshot save active ./one-darker.png
echo "colorscheme one-dark" | kak -p $1
sleep 3
grimshot save active ./one-dark.png
echo "colorscheme one-light" | kak -p $1
sleep 3
grimshot save active ./one-light.png
