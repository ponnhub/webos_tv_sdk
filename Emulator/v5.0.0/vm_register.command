#!/bin/bash

#LG_WEBOS_SDK_HOME=$1

vboxmanage_tool="/usr/bin/vboxmanage"
if [ -x /usr/local/bin/vboxmanage ]
then
vboxmanage_tool="/usr/local/bin/vboxmanage"
fi


# register emulator
$vboxmanage_tool registervm "$LG_WEBOS_TV_SDK_HOME/Emulator/v5.0.0/LG_webOS_TV_Emulator.vbox"
$vboxmanage_tool sharedfolder add "LG webOS TV Emulator 5.0.0" --name "shared" --hostpath $HOME/webOS_SDK/EmulWorkspace

$vboxmanage_tool modifyvm "LG webOS TV Emulator 5.0.0" --macaddress1 auto
$vboxmanage_tool modifyvm "LG webOS TV Emulator 5.0.0" --macaddress2 auto
