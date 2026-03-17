# Tokyo Night Day palette
export TN_BG="#d0d5e3"
export TN_BG_HIGHLIGHT="#b7c1e3"
export TN_FG="#3760bf"
export TN_FG_DARK="#8990b3"
export TN_COMMENT="#8990b3"
export TN_BLUE="#4094a3"
export TN_BLUE_ALT="#2e7de9"
export TN_CYAN="#007197"
export TN_CYAN_ALT="#188092"
export TN_GREEN="#587539"
export TN_YELLOW="#8c6c3e"
export TN_ORANGE="#b15c00"
export TN_RED="#f52a65"
export TN_RED_ALT="#c64343"
export TN_MAGENTA="#9854f1"
export TN_PINK="#d20065"
export TN_PINK_ALT="#b668cd"
export TN_TEAL="#118c74"
export TN_TEAL_ALT="#41a6b5"
export TN_DARK="#6172b0"
export TN_BG_DARK="#d0d5e3"
export TN_BG_BLUE="#b7c1e3"

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

# zsh completion colors (day theme -- light background)
#   di=blue(#4094a3) ln=cyan(#007197) so=green(#587539) pi=yellow(#8c6c3e)
#   ex=magenta(#9854f1) bd/cd=teal(#118c74) su/sg=red on light bg
#   tw=green on light bg ow=blue on blue bg
zstyle ':completion:*' list-colors \
  'di=38;2;64;148;163' \
  'ln=38;2;0;113;151' \
  'so=38;2;88;117;57' \
  'pi=38;2;140;108;62' \
  'ex=38;2;152;84;241' \
  'bd=38;2;17;140;116' \
  'cd=38;2;17;140;116' \
  'su=38;2;245;42;101;48;2;208;213;227' \
  'sg=38;2;245;42;101;48;2;208;213;227' \
  'tw=38;2;88;117;57;48;2;208;213;227' \
  'ow=38;2;64;148;163;48;2;183;193;227'

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
