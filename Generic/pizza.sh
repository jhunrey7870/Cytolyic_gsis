#!/bin/bash
# Sync
sudo ./ErfanGSIs/url2GSI.sh $ROM_URL Generic
    mkdir final
    sudo chmod -R 777 ErfanGSIs/output
    cd ErfanGSIs/output
    zip -r $ROM_NAME-CytolyticGSIs-Aonly.7z *-Aonly-*.img
    zip -r $ROM_NAME-CytolyticGSIs-AB.7z *-AB-*.img
    curl -sL https://git.io/file-transfer | sh
    echo "::set-env name=DOWNLOAD_A::$(./transfer $MIR "$ROM-Aonly-$sourcever2-$date2-ErfanGSI-cytolytic.zip" | grep -o -P '(?<=Download Link: )\S+')"
    echo "::set-env name=DOWNLOAD_AB::$(./transfer $MIR "$ROM-AB-$sourcever2-$date2-ErfanGSI-cytolytic.zip" | grep -o -P '(?<=Download Link: )\S+')"
