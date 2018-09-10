#!/usr/bin/env bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget`
brew install wget

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep

# install  useful libraries
brew install git
brew install bash-completion
brew install httpie
brew install tree
brew install htop

# install dev
brew install node
brew install create-react-app

# Remove outdated versions from the cellar.
brew cleanup