#!/bin/bash
# Sync
sudo ./ErfanGSIs/url2GSI.sh $ROM_URL AndroidS
    mkdir final
    sudo chmod -R 777 ErfanGSIs/output
    cd ErfanGSIs/output
    zip -r $ROM_NAME-CytolyticGSIs-AB.7z *-AB-*.img
    zip -r $ROM_NAME-CytolyticGSIs-Aonly.7z *-Aonly-*.img
    curl -sL https://git.io/file-transfer | sh
    echo "::set-env name=A-ONLY::$(./transfer $MIR "$ROM_NAME-GSI-Aonly.7z" | grep -o -P '(?<=Download Link: )\S+')"
    echo "::set-env name=A/B::$(./transfer $MIR "$ROM_NAME-GSI-AB.7z" | grep -o -P '(?<=Download Link: )\S+')"
    curl -T $ROM_NAME-CytolyticGSIs-AB.7z ftp://$username:$password@$uploadto/
    curl -T $ROM_NAME-CytolyticGSIs-Aonly.7z ftp://$username:$password@$uploadto/

    
