#!/bin/bash
# Sync
sudo ./ErfanGSIs/url2GSI.sh $ROM_URL Generic
    mkdir final
    sudo chmod -R 777 ErfanGSIs/output
    cd ErfanGSIs/output
    telegram -m "test LOL"
    telegram -m "still testing"
    zip -r $ROM_NAME-GSI-AB.7z *-AB-*.img
    zip -r $ROM_NAME-GSI-Aonly.7z *-Aonly-*.img
    curl -sL https://git.io/file-transfer | sh
    echo "::set-env name=A-ONLY::$(./transfer $MIR "$ROM_NAME-GSI-Aonly.7z" | grep -o -P '(?<=Download Link: )\S+')"
    echo "::set-env name=A/B::$(./transfer $MIR "$ROM_NAME-GSI-AB.7z" | grep -o -P '(?<=Download Link: )\S+')"
    
