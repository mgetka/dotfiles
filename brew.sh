#!/usr/bin/env bash

set -e

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install other useful binaries.
brew install nmap
brew install socat
brew install git
brew install git-lfs
brew install imagemagick
brew install ssh-copy-id
brew install tree

# Remove outdated versions from the cellar.
brew cleanup