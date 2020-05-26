export DOTFILES="$HOME/.dotfiles"
[ -s "/Users/judeibe/.jabba/jabba.sh" ] && source "/Users/judeibe/.jabba/jabba.sh"


typeset -U config_files
config_files=($DOTFILES/zsh/*.zsh)

for file in ${(M)config_files:#*/*.zsh}; do
  source "$file"
done

unset config_files

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
