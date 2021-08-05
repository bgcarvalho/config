# Setup fzf
# ---------
if [[ ! "$PATH" == */home/bgcarvalho/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/bgcarvalho/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/bgcarvalho/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/bgcarvalho/.fzf/shell/key-bindings.zsh"
