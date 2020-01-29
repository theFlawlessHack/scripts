#!/usr/bin/env bash

##
# Pickle Laptop
# Sets up a new laptop with a basic development environment
#
# All Rights Reserved. Copyright 2020 JESSICA JEAN JOSEPH ©
#
# Updated: January 28th, 2019
# Created: January 27th, 2019
##

## Supporting Methods
spacer() {
	echo "⚡️⚡️⚡️⚡️🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔⚡️⚡️⚡️⚡️"
	echo "⚡️⚡️⚡️⚡️🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔⚡️⚡️⚡️⚡️"
	echo "⚡️⚡️⚡️⚡️🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔🥔⚡️⚡️⚡️⚡️"
}

## Install Methods
angular() {
	spacer
	node
	echo "Installing Angular CLI"
	npm install -g @angular/cli
}

git() {
	spacer
	echo "Installing Git"
	brew install git
}

git_verify() {
	echo ""
	echo "Would you like to verify the git version? Y/N"
}

homebrew() {
	spacer
	echo "Installing Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

node() {
	spacer
	echo "Installing Node and NPM"
	nvm
}

nvm() {
	spacer
	echo "Installing NVM"

	# remove dupes
	rm -rf ~/.nvm
	
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

#	export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

	source ~/.nvm/nvm.sh
}

vapor() {
	spacer
	echo "Installing Vapor"
	brew install vapor/tap/vapor
}

xcode() {
	spacer
	echo "Install the latest version of Xcode 🔨 from the App Store"
    echo "Have you started the download? Y/N"
}

main() {

	echo "!!!!!!!STARTING UP THE PICKLE POTATO MACHINE!!!!!!!"
	xcode
	homebrew
	vapor
	git
	git_verify
	angular
}

main "$@"
