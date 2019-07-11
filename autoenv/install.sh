#!/usr/bin/env bash
#
autoenv_dir=~/.autoenv
autoenv_back_dir=~/.autoenv_backup
if [ -d "$autoenv_back_dir" ]; then
    rm -rf ~/.autoenv_backup
fi
if [ -d "$autoenv_dir" ]; then
    mv ~/.autoenv ~/.autoenv_backup
fi
git clone https://github.com/kennethreitz/autoenv.git ~/.autoenv
