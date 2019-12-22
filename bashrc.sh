#!/bin/bash
# SCRIPT FOR ADDING ALIASES TO .bashrc FILE

# CREATE A BACKUP
cp .bashrc .bashrc.bak

#ADD ALIASES HEADER TO BASHRC FILE
echo -e "\n# CUSTOM ALIASES" >> .bashrc

# ADD ALIASES TO .bashrc
echo "alias cls='clear;pwd;ls'" >> .bashrc
