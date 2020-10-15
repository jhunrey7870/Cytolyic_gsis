#!/bin/bash
# Sync

wget https://raw.githubusercontent.com/aktham3210/Cytolyic_gsis/main/telegram
sed ${{ secrets.TOKEN }}
TOKEN="${{ secrets.TOKEN }}"

if [ -z $TOKEN ]; then
exit 0

sed "Enter the chat ID you want the bot to send the build information to\nID: "
read ID


sudo install telegram /usr/bin
