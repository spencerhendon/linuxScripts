#!/bin/bash
# UPDATE SCRIPT

# CHECK IF LOG FOLDER EXIST
# IF DOES NOT EXIST... CREATE IT
if [ ! -d ~/updateLogs ]
then
        mkdir ~/updateLogs
fi

# UPDATE AND UPGRADE
apt update > ~/updateLogs/update_$(date "+%F-%T")
apt upgrade -y > ~/updateLogs/upgrade_$(date "+%F-%T")

# REBOOT IF NECESSARY
if [ -f /var/run/reboot-required ]
then
        echo "/var/run/reboot-required exists. REBOOTING." | tee ~/updateLogs/$(date "+%F-%T")_reboot
        reboot
fi
