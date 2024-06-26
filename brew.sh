#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install gmp
brew install python
brew install python3
brew postinstall python3

# Install font tools.
brew tap bramstein/webfonttools
brew tap homebrew/cask-fonts
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew cask install font-fira-code

# Install other useful binaries.
brew install ack
brew install exa
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install caskroom/cask/brew-cask
brew install starship
brew install jq
brew cask install alfred
brew cask install rectangle

# Mopidy
brew tap mopidy/mopidy
brew install mopidy
brew install mopidy/mopidy/mopidy-mpd
brew services start mopidy/mopidy/mopidy
brew install mpc
brew install ncmpcpp
brew install fftw ncurses libtool automake portaudio

# Remove outdated versions from the cellar.
brew cleanup
