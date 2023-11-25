# shellcheck disable=SC2034

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jason/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zplug/init.zsh

zplug romkatv/powerlevel10k, as:theme, depth:1

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# "Note that zsh-syntax-highlighting must be the last plugin sourced."
zplug zsh-users/zsh-syntax-highlighting, defer:2

bindkey "[1;5D" backward-word
bindkey "[1;5C" forward-word

# Add private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# To customize prompt, run `p10k configure` or edit ~/dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh

# fzf
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
# Keep original CTRL-T and set fzf's to CTRL-Q
bindkey -M emacs '^T' transpose-chars
bindkey -M vicmd '^T' transpose-chars
bindkey -M viins '^T' transpose-chars
bindkey -M emacs '^Q' fzf-file-widget
bindkey -M vicmd '^Q' fzf-file-widget
bindkey -M viins '^Q' fzf-file-widget
# https://github.com/junegunn/fzf/wiki/Color-schemes#solarized-dark
_gen_fzf_default_opts() {
    local base03="#002b36"
    local base02="#073642"
    local base01="#586e75"
    local base00="#657b83"
    local base0="#839496"
    local base1="#93a1a1"
    local base2="#eee8d5"
    local base3="#fdf6e3"
    local yellow="#b58900"
    local orange="#cb4b16"
    local red="#dc322f"
    local magenta="#d33682"
    local violet="#6c71c4"
    local blue="#268bd2"
    local cyan="#2aa198"
    local green="#859900"
    export FZF_DEFAULT_OPTS="
        --color fg:-1,bg:-1,hl:$blue,fg+:$base1,bg+:-1,hl+:$blue
        --color info:$yellow,prompt:$yellow,pointer:$base1,marker:$base1,spinner:$yellow
    "
}
_gen_fzf_default_opts

# Aliases
alias curlget='curl -fsSLO'
alias curlgetty='curl -fsSLo-'
alias lg=lazygit
alias ll='lsd -l'
alias ls='lsd'

# Environment
export EDITOR=hx
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export VISUAL=hx
