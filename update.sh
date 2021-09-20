#!/bin/bash
#update script
sudo apt update && sudp apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean && sudo reboot
