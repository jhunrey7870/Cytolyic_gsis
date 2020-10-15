#!/bin/bash
# Sync

wget https://raw.githubusercontent.com/aktham3210/Cytolyic_gsis/main/telegram
sed "Enter the bot token\nToken: "
sed ${{ secrets.TOKEN }}

if [ -z $TOKEN ]; then
echo -e "Enter a bot token"
exit 0
fi
sed -i "s/enzomacaco/$TOKEN/" telegram

sed "Enter the chat ID you want the bot to send the build information to\nID: "
read ID

if [ -z $ID ]; then
echo -e "Enter the chat ID you want the bot to send the build information to"
exit 0
fi
sed -i "s/enso/$ID/" telegram

sudo install telegram /usr/bin
