#!/bin/bash
# Sync

wget https://raw.githubusercontent.com/aktham3210/Cytolyic_gsis/main/telegram
TOKEN="${{ secrets.TOKEN }}"

if [ -z $TOKEN ]; then
exit 0

sed "Enter the chat ID you want the bot to send the build information to\nID: "
read ID

sed -i "s/enzomacaco/$TOKEN" telegram

sudo install telegram /usr/bin
