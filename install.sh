#!/bin/bash

# Get file directory

read -p "Specify OMF directory (leave blank for default)" directory
directory=${directory:-$HOME/.local/share/omf/themes}
eradir=$directory/era
rm -rf $eradir
mkdir $eradir
cp fish_prompt.fish $eradir/fish_prompt.fish
cp fish_right_prompt.fish $eradir/fish_right_prompt.fish
read -r -p "Would you like to switch themes? [Y/n] " response
if [[ "$response" =~ ^([nN][oO]|[nN])$ ]]
then
    echo 'Run <omf theme era> if you want to switch later'
else
    fish -c 'omf theme era'
fi
