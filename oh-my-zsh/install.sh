export ZSH=$HOME/.oh-my-zsh
export ZSHCUSTOM=$ZSH/custom

if [ ! -d $ZSH ]; then
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
  sudo -u root -H sh -c "chsh -s /bin/zsh $(whoami)"
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSHCUSTOM/themes/spaceship-prompt"
  ln -s "$ZSHCUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSHCUSTOM/themes/spaceship.zsh-theme"
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSHCUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-completions $ZSHCUSTOM/plugins/zsh-completions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSHCUSTOM/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-history-substring-search $ZSHCUSTOM/plugins/zsh-history-substring-search
fi
