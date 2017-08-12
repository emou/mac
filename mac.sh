#!/bin/bash
if ! command -v brew >/dev/null; then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
else
  echo "Homebrew already installed. Skipping."
fi

# [Install Ansible](http://docs.ansible.com/intro_installation.html).
if ! command -v ansible >/dev/null; then
  echo "Installing Ansible ..."
  brew install ansible 
else
  echo "Ansible already installed. Skipping."
fi
