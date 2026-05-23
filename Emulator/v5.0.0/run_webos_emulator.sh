#!/bin/sh

if [ -z "$LG_WEBOS_TV_SDK_HOME" ]; then
BIN_DIR=$(cd "`dirname "$0"`" && pwd)
export LG_WEBOS_TV_SDK_HOME=$BIN_DIR/../..
export WEBOS_CLI_TV=$BIN_DIR/../../CLI/bin
fi

$LG_WEBOS_TV_SDK_HOME/Resources/Jre/Contents/Home/bin/java -XstartOnFirstThread -jar $LG_WEBOS_TV_SDK_HOME/Emulator/v5.0.0/LG_webOS_TV_Emulator_mac.jar > /dev/null 2>&1 
