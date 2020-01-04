if command -v exa >/dev/null 2>&1; then
  alias ls="exa"
  alias l="exa -a"
  alias ll="exa -lgh"
  alias la="exa -lagh"
  alias lt="exa -T"
  alias lg="exa -lagh --git"
fi

if [ ! -z "$(jabba alias default)" ]; then
    jabba use default
fi

if command -v hub >/dev/null 2>&1; then
  eval "$(hub alias -s)"
fi
