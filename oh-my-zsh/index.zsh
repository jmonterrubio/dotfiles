export ZSH=$HOME/.oh-my-zsh
export ZSHCUSTOM=$ZSH/custom

ZSH_THEME="spaceship"
DEFAULT_USER=$(whoami)

plugins=(git web-search zsh-history-substring-search zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $ZSHCUSTOM/themes/spaceship.zsh-theme
source $ZSHCUSTOM/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $ZSHCUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSHCUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSHCUSTOM/plugins/zsh-completions/zsh-completions.plugin.zsh
