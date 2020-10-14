#!/bin/bash
# Sync
sudo ./ErfanGSIs/url2GSI.sh $ROM_URL Generic
    mkdir final
    sudo chmod -R 777 ErfanGSIs/output
    cd ErfanGSIs/output
    zip -r $ROM_NAME-CytolyticGSIs-Aonly.7z *-Aonly-*.img
    ZIP -r $ROM_NAME-CytolyticGSIs-AB.7z
    curl -sL https://git.io/file-transfer | sh
    ./transfer $MIR $ZIP_NAME-CytolyticGSIs-Aonly.7z 
    ./transfer $MIR $ROM_NAME-CytolyticGSIs-AB.7z
    curl -T $ROM_NAME-CytolyticGSIs-Aonly.7z ftp://$username:$password@$uploadto/
    curl -T $ROM_NAME-CytolyticGSIs-AB.7z ftp://$username:$password@$uploadto/
