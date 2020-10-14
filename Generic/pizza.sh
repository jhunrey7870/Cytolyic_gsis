#!/bin/bash
# Sync
sudo ./ErfanGSIs/url2GSI.sh $ROM_URL Generic
    mkdir final
    sudo chmod -R 777 ErfanGSIs/output
    cd ErfanGSIs/output
    zip -r $ROM_NAME-CytolyticGSIs-Aonly.7z *-Aonly-*.img
    ZIP -r $ROM_NAME-CytolyticGSIs-AB.7z
    curl -sL https://git.io/file-transfer | sh
    echo "::set-env name=arm64ab::$(./transfer $MIR $ZIP_NAME-CytolyticGSIs-Aonly.7z" | grep -o -P '(?<=Download Link: )\S+')" 
    echo "::set-env name=arm64a-only::$(./transfer $MIR $ROM_NAME-CytolyticGSIs-AB.7z" | grep -o -P '(?<=Download Link: )\S+')"
    curl -T $ROM_NAME-CytolyticGSIs-Aonly.7z ftp://$username:$password@$uploadto/
    curl -T $ROM_NAME-CytolyticGSIs-AB.7z ftp://$username:$password@$uploadto/
