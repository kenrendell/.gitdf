# ZSH Environment Variables

# Change default shell: sudo chsh -s "$(which zsh)" [username]
# Order: .zshenv -> .zprofile -> .zshrc -> .zlogout

# XDG Paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# User configuration directory
export USER_CONFIG="$XDG_CONFIG_HOME/user_config"

# XDG configuration directories
[[ -z "$XDG_CONFIG_DIRS" ]] && \
export XDG_CONFIG_DIRS="$USER_CONFIG:/etc/xdg" || \
export XDG_CONFIG_DIRS="$USER_CONFIG:$XDG_CONFIG_DIRS"

# Include user binaries in PATH.
export PATH="$USER_CONFIG/bin:$PATH"

# ZSH configuration files
export ZDOTDIR="$USER_CONFIG/zsh"
export HISTFILE="$XDG_DATA_HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
export KEYTIMEOUT=1

# Set LS_COLORS
eval "$(dircolors -b "$ZDOTDIR/colors/.dircolors")"

# Xorg configuration files
export XORGCONFIG="$USER_CONFIG/X11/xorg.conf"
export XINITRC="$USER_CONFIG/X11/xinitrc"

# Shell used by sxhkd to execute commands.
export SXHKD_SHELL='/bin/sh'

# Paths/settings used by zgen to manage the plugins of zsh.
export ZGEN_DIR="$XDG_DATA_HOME/zgen"
export ZGEN_INIT="$ZGEN_DIR/init.zsh"
export ZGEN_AUTOLOAD_COMPINIT=0

# Editor
export EDITOR='nvim'
export VISUAL='nvim'

# Colors
export BACKGD='#1D2025'
export BLACK_0='#363B45'
export RED_0='#DC657D'
export GREEN_0='#79B370'
export YELLOW_0='#E18051'
export BLUE_0='#5596E2'
export MAGENTA_0='#B07AB8'
export CYAN_0='#4AB0A6'
export WHITE_0='#A1A8B5'
export BLACK_1='#5E6878'
export RED_1='#E48698'
export GREEN_1='#98C491'
export YELLOW_1='#E79D78'
export BLUE_1='#78ACE7'
export MAGENTA_1='#C095C6'
export CYAN_1='#73C4BC'
export WHITE_1='#BAC0C9'

# Include FZF binaries in PATH.
export FZF_BASE="$XDG_DATA_HOME/fzf"
export PATH="$FZF_BASE/bin:$PATH"

# FZF configurations
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS="
--bind='ctrl-space:toggle-search,btab:toggle-preview'
--height=60%
--layout=reverse
--prompt='❯ '
--marker='❯ '
--pointer=' ▶'
--no-bold
--color='fg:7,bg:$BACKGD,preview-fg:7,preview-bg:$BACKGD'
--color='gutter:$BACKGD,fg+:15,bg+:0,hl:4,hl+:12'
--color='border:8,query:4,disabled:7,info:5,header:2'
--color='prompt:12,pointer:14,marker:9,spinner:3'
"

# Paths for other configurations
export POLY_MODULE="$USER_CONFIG/polybar/modules"
export SXHKD_BIND="$USER_CONFIG/sxhkd/"
export ST_BIN="$USER_CONFIG/suckless/st/bin"

# Desktop background
export DESKTOP_BG="$HOME/Pictures/Wallpapers/desktop-bg.jpg"

# Extras
export BAR_HEIGHT=16  # For polybar, bspwm, and dmenu layout.
export BORDER=2       # For polybar, bspwm, and dmenu layout.
export SINK=0         # Run 'pactl list sinks' to check for available sinks.
export SOURCE=1       # Run 'pactl list sources' to check for available sources.
export BATTERY='BAT1' # See '/sys/class/power_supply' to check for availble batteries.