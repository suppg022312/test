#!/bin/bash

# Download .bash_aliases from GitHub
curl -o ~/.bash_aliases https://raw.githubusercontent.com/suppg022312/test/main/.bash_aliases

# Ensure .bashrc sources .bash_aliases
if ! grep -q "~/.bash_aliases" ~/.bashrc; then
    echo -e "\nif [ -f ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi" >> ~/.bashrc
fi

# Source the files in current session
source ~/.bash_aliases
source ~/.bashrc

echo "Aliases setup complete! The 'ch' command is now available."