#!/bin/bash


sudo apt-get install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "zsh" >> ~/.bashrc

# to use makefiles
sudo apt-get install -y build-essential

# install vs code extensions 
code-server --install-extension esbenp.prettier-vscode
code-server --install-extension dbaeumer.vscode-eslint
code-server --install-extension eamodio.gitlens

# move settings.json to .vscode directory
# cp .brev/settings.json /home/brev/.local/share/code-server/User/settings.json

# copy over bash_profile and source it 
cat .brev/.bash_profile >> ~/.zshrc
source ~/.zshrc