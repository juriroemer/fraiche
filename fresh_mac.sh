#!/bin/zsh

RED='\033[0;31m'
BOLD=$(tput bold)
NORM=$(tput sgr0)


# copy dotfiles (symlinks instead?)
# source .zshrc
echo "\n${RED}${BOLD}(1/x)${NORM} copying dotfiles\n"
cp ./dotfiles/.zshrc ~/.zshrc
cp ./dotfiles/.vimrc ~/.vimrc
source ~/.zshrc
echo "${RED}${BOLD}(1/x)${NORM} ...done\n"

# Install Homebrew
echo "\n${RED}${BOLD}(2/x)${NORM} Installing Homebrew\n"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "${RED}${BOLD}(2/x)${NORM} ...done\n"

# Install formulas
echo "\n${RED}${BOLD}(3/x)${NORM} Installing formulas\n"
brew install \
    wget \
    htop \
    macvim
echo "\n${RED}${BOLD}(3/x)${NORM} ...done\n"


# Install casks
echo "\n${RED}${BOLD}(4/x)${NORM} Installing casks\n"
brew install --cask \
    owncloud \
    vlc \
    dropbox \
    google-chrome \
    focus \
    zoom \
    iriunwebcam \
    spotify \
    sound-control \
    lulu \
    iterm2 \
    anki \
    netnewswire \
    anydesk \
    fanny \
    coconutbattery \
    calibre \
    spek \
    rectangle \
    tunnelblick \
    hex-fied \
    burp-suite \
    local \
    cutter \
    gimp \
    transmission \
    nordvpn \
    appcleaner \
    mactex-no-gui \
    tex-live-utility \
    texstudio
echo "\n${RED}${BOLD}(4/x)${NORM} ...done\n"

# Get further apps for manual installation (meeter, xournal++)
echo "\n${RED}${BOLD}(5/x)${NORM} Downloading further apps\n"
wget -i downloads.txt
echo "\n${RED}${BOLD}(5/x)${NORM} ...done\n"

## Doesn't work with Apple Silicon ?
# brew install --cask adoptopenjdk ghidra


# Install vim-plug
echo "\n${RED}${BOLD}(6/x)${NORM} Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "\n${RED}${BOLD}(6/x)${NORM} ...done\n"

# what's next?
echo "\n${RED}${BOLD}Next:${NORM} Install xournal++, meeter, oh-my-zsh?\n"

echo "Don't forget the ssh-keys!"
