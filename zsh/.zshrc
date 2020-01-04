export DOTFILES="$HOME/.dotfiles"

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

