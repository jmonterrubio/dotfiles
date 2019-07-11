#!/usr/bin/env zsh
#
curl -s "https://get.sdkman.io" | bash
. ~/.zshrc
while read ext; do sdk install gradle "$ext"; done < ~/.dotfiles/sdkman/gradle.list
exit 0