/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
(cd ~/Downloads && curl -LO https://github.com/MarkJerde/Flycut/releases/download/1.9.2/Flycut.app.zip && unzip Flycut.app.zip && mv Flycut.app ~/Applications)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash