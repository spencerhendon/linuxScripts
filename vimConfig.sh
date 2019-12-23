#!/bin/bash
# SCRIPT FOR SETTING UP VIM CONFIG

# CHECK IF .vimrc EXIST
# IF DOES NOT EXIST... CREATE IT
if [ ! -f ~/.vimrc ]
then
        touch ~/.vimrc
fi

# ADD CONFIG TO FILE
echo ":color desert" > ~/.vimrc
