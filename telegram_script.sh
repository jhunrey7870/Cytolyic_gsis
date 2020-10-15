#!/bin/bash
# Sync

wget https://raw.githubusercontent.com/aktham3210/Cytolyic_gsis/main/telegram
TOKEN="${{ secrets.TOKEN }}"

if [ -z $TOKEN ]; then
exit 0
sed -i "s/CHATS=(-1001459039412)

sed -i "s/enzomacaco/$TOKEN" telegram

sudo install telegram /usr/bin
