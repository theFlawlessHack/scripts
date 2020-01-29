#!usr/bin/env bash

##### 🍣
# Install NVM 
# A script designed to install the node version manager (NVM)
#
# Copyright JESSICA JEAN JOSEPH © 2020
# All Rights Reservered.
##### 🍣

echo "Installing NVM"

# remove dupes
rm -rf ~/.nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.nvm/nvm.sh
