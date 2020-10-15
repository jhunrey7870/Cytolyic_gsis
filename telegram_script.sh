#!/bin/bash
# Sync

wget https://raw.githubusercontent.com/aktham3210/Cytolyic_gsis/main/telegram
sed ${{ secrets.TOKEN }}
TOKEN="${{ secrets.TOKEN }}"

if [ -z $TOKEN ]; then
echo -e "Enter a bot token"
exit 0
fi
sed -i "s/enzomacaco/$TOKEN/" telegram

sed "Enter the chat ID you want the bot to send the build information to\nID: "
read ID


sudo install telegram /usr/bin
