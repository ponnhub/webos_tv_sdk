#!/bin/bash

vboxmanage_tool="/usr/bin/vboxmanage"
if [ -x /usr/local/bin/vboxmanage ]
then
vboxmanage_tool="/usr/local/bin/vboxmanage"
fi

# remove emulator
$vboxmanage_tool controlvm 9e8b9f29-44b9-4a6e-3053-2053a70341cb pause
$vboxmanage_tool controlvm 9e8b9f29-44b9-4a6e-3053-2053a70341cb poweroff
sleep 3
$vboxmanage_tool unregistervm 9e8b9f29-44b9-4a6e-3053-2053a70341cb --delete
$vboxmanage_tool closemedium disk 8dcdf229-f189-4fd2-305f-f1fbb991a3ea
