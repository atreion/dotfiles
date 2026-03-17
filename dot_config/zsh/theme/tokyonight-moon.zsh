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
  --color=query:$TN_FG:regular \
  --color=scrollbar:$TN_BLUE \
  --color=separator:$TN_ORANGE \
  --color=spinner:$TN_PINK \
"

# zsh completion colors
# Hard-coded RGB values -- zstyle list-colors does not support variable
# interpolation in ANSI escape sequences. Keep in sync with palette above.
#   di=blue(#589ed7) ln=cyan(#86e1fc) so=green(#c3e88d) pi=yellow(#ffc777)
#   ex=magenta(#c099ff) bd/cd=teal(#4fd6be) su/sg=red on dark bg
#   tw=green on dark bg ow=blue on blue bg
zstyle ':completion:*' list-colors \
  'di=38;2;88;158;215' \
  'ln=38;2;134;225;252' \
  'so=38;2;195;232;141' \
  'pi=38;2;255;199;119' \
  'ex=38;2;192;153;255' \
  'bd=38;2;79;214;190' \
  'cd=38;2;79;214;190' \
  'su=38;2;255;117;127;48;2;30;32;48' \
  'sg=38;2;255;117;127;48;2;30;32;48' \
  'tw=38;2;195;232;141;48;2;30;32;48' \
  'ow=38;2;88;158;215;48;2;45;63;118'

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
