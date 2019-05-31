#!/bin/bash

set -e
sudo chmod 755 *
mkdir -p $HOME/bin
SCRIPTS=('pr_split')

for SCRIPT in ${SCRIPTS[*]}
do
    rm -f $HOME/bin/$SCRIPT
    rm -f $HOME/bin/$SCRIPT.py
    cp $SCRIPT.py $HOME/bin/$SCRIPT
done

if [ -z "$(grep '$HOME/bin' $HOME/.bashrc)" ]; then
    echo 'PATH=$PATH:$HOME/bin' >> $HOME/.bashrc
fi
