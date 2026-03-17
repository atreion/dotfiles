alias e="${EDITOR}"
alias tree='eza --tree --icons=auto'
alias cls='clear'

alias lazygit='lazygit --use-config-file="$XDG_CONFIG_HOME/lazygit/themes-mergable/tokyonight-moon.yml"'
alias lg=lazygit

vv() {
  # Assumes all configs exist in directories named ~/.config/nvim-*
  local config=$(fd --max-depth 1 --glob 'nvim-*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)
 
  # If I exit fzf without selecting a config, don't open Neovim
  [[ -z $config ]] && echo "No config selected" && return
 
  # Open Neovim with the selected config
  NVIM_APPNAME=$(basename $config) nvim $@
}
