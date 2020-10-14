#!/bin/bash
# Sync
SYNC_START=$(date +"%s")

sudo -E apt-get -qq update
sudo -E apt-get -qq install git openjdk-8-jdk wget expect yarn
pip install pyrogram tgcrypto

SYNC_END=$(date +"%s")
SYNC_DIFF=$((SYNC_END - SYNC_START)) 
