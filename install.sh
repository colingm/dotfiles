/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
(cd ~/Downloads && curl -LO https://github.com/MarkJerde/Flycut/releases/download/1.9.2/Flycut.app.zip && unzip Flycut.app.zip && mv Flycut.app ~/Applications)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# Mopidy plugins this has to be installed after python :)
# pip install Mopidy-Youtube
# pip install Mopidy-Spotify

# Cava
# ln -s `/usr/local/bin/glibtoolize` /usr/local/bin/libtoolize
# ln -s /usr/lib/libncurses.dylib /usr/local/lib/libncursesw.dylib