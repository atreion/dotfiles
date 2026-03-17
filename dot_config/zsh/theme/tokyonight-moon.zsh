# Tokyo Night Moon palette
export TN_BG="#1e2030"
export TN_BG_HIGHLIGHT="#2d3f76"
export TN_FG="#c8d3f5"
export TN_FG_DARK="#828bb8"
export TN_COMMENT="#545c7e"
export TN_BLUE="#589ed7"
export TN_BLUE_ALT="#82aaff"
export TN_CYAN="#86e1fc"
export TN_CYAN_ALT="#65bcff"
export TN_GREEN="#c3e88d"
export TN_YELLOW="#ffc777"
export TN_ORANGE="#ff966c"
export TN_RED="#ff757f"
export TN_RED_ALT="#c53b53"
export TN_MAGENTA="#c099ff"
export TN_PINK="#ff007c"
export TN_PINK_ALT="#fca7ea"
export TN_TEAL="#4fd6be"
export TN_TEAL_ALT="#b4f9f8"
export TN_DARK="#444a73"
export TN_BG_DARK="#1e2030"
export TN_BG_BLUE="#2d3f76"

# fzf
export FZF_DEFAULT_OPTS=" \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:$TN_BG_HIGHLIGHT \
  --color=bg:$TN_BG \
  --color=border:$TN_BLUE \
  --color=fg:$TN_FG \
  --color=gutter:$TN_BG \
  --color=header:$TN_ORANGE \
  --color=hl+:$TN_CYAN_ALT \
  --color=hl:$TN_CYAN_ALT \
  --color=info:$TN_COMMENT \
  --color=marker:$TN_PINK \
  --color=pointer:$TN_PINK \
  --color=prompt:$TN_CYAN_ALT \
  --color=query:${TN_FG}:regular \
  --color=scrollbar:$TN_BLUE \
  --color=separator:$TN_ORANGE \
  --color=spinner:$TN_PINK \
"

# LS_COLORS and zsh completion colors via vivid
export LS_COLORS="$(vivid generate tokyonight-moon)"

# Reorder LS_COLORS for zsh: specific filename patterns must come before
# extension patterns because zsh list-colors uses first-match-wins.
typeset -a _lsc=( ${(s.:.)LS_COLORS} )
typeset -a _lsc_specific=() _lsc_rest=()
for _e in "${_lsc[@]}"; do
  case ${_e%%=*} in
    \*?*.*|*[A-Z]*) _lsc_specific+=("$_e") ;;  # specific filenames before extension patterns
    *) _lsc_rest+=("$_e") ;;
  esac
done
zstyle ':completion:*' list-colors "${_lsc_specific[@]}" "${_lsc_rest[@]}"
unset _lsc _lsc_specific _lsc_rest _e

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
