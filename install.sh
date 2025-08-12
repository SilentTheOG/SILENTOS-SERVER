#!/bin/bash
if ! [ "$SILENT_OS_INSTALL_DIR" ];
then
    SILENT_OS_INSTALL_DIR=~/.silentos
fi

git clone https://github.com/Ding1367/silent-os $SILENT_OS_INSTALL_DIR
cd $SILENT_OS_INSTALL_DIR
chmod +x bin/silent-os

if [ "$SHELL" == "/bin/zsh" ];
then
    PROF_FILE=~/.zshrc
elif [ "$SHELL" == "/bin/bash" ];
then
    if [ -e "~/.bash_profile" ];
    then
        PROF_FILE=~/.bash_profile
    else
        PROF_FILE=~/.bashrc
    fi
else
    echo "Failed to set SILENT_OS_PATH (value is $SILENT_OS_INSTALL_DIR)"
    echo "              PATH=$SILENT_OS_INSTALL_DIR/bin:\$PATH"
    exit 1
fi
echo "export PATH=$SILENT_OS_INSTALL_DIR/bin:\$PATH
export SILENT_OS_PATH=$SILENT_OS_INSTALL_DIR" >> $PROF_FILE
source $PROF_FILE
