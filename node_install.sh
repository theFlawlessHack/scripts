#!/bin/bash
# installing node via nvm

# defining version
INSTALL_NODE_VER = 6
INSTALL_NVM_VER = 0.33.4

echo -e "Install node version manager v$INSTALL_NVM_VER"
# remove dupes
rm -rf ~/.nvm

# otherwise, install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v$INSTALL_NVM_VER/install.sh | bash

# making nvm available to terminal
source ~/.nvm/nvm.sh
