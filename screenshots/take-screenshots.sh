#!/bin/bash

echo "colorscheme one-darker; one-enable-fancy-underlines" | kak -p $1
sleep 3
grimshot save active ./one-darker.png
echo "colorscheme one-dark; one-enable-fancy-underlines" | kak -p $1
sleep 3
grimshot save active ./one-dark.png
echo "colorscheme one-light; one-enable-fancy-underlines" | kak -p $1
sleep 3
grimshot save active ./one-light.png
