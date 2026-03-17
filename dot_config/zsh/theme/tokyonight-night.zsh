# Tokyo Night Night palette
export TN_BG="#16161e"
export TN_BG_HIGHLIGHT="#283457"
export TN_FG="#c0caf5"
export TN_FG_DARK="#737aa2"
export TN_COMMENT="#545c7e"
export TN_BLUE="#27a1b9"
export TN_BLUE_ALT="#7aa2f7"
export TN_CYAN="#7dcfff"
export TN_CYAN_ALT="#2ac3de"
export TN_GREEN="#9ece6a"
export TN_YELLOW="#e0af68"
export TN_ORANGE="#ff9e64"
export TN_RED="#f7768e"
export TN_RED_ALT="#db4b4b"
export TN_MAGENTA="#bb9af7"
export TN_PINK="#ff007c"
export TN_PINK_ALT="#c678dd"
export TN_TEAL="#1abc9c"
export TN_TEAL_ALT="#41a6b5"
export TN_DARK="#3b4261"
export TN_BG_DARK="#16161e"
export TN_BG_BLUE="#283457"

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
  --color=query:$TN_FG:regular \
  --color=scrollbar:$TN_BLUE \
  --color=separator:$TN_ORANGE \
  --color=spinner:$TN_PINK \
"

# LS_COLORS and zsh completion colors via vivid
export LS_COLORS="$(vivid generate tokyonight-night)"
export EZA_COLORS=""
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
