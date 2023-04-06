# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting archlinux zsh-pyenv web-search)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Preferred editor
export EDITOR="nano"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Something IDRK about GPG for SSH auth, also fix signing git commit
#unset SSH_AGENT_PID
#if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
#  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
#fi
#export GPG_TTY=$TTY
#gpg-connect-agent updatestartuptty /bye > /dev/null

# SSH Agent
SSH_AUTH_SOCK="~/.ssh/agent"

# Python
export PATH="$HOME/.local/bin:$PATH"
alias pip=pip3

# Ruby gem binaries
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"

# Android/Flutter
export JAVA_OPTS="-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee"
export JAVA_HOME="/usr/lib/jvm/java-16-openjdk"
export ANDROID_SDK_ROOT="/opt/android-sdk"
export PATH="/opt/flutter/bin:/opt/android-sdk/tools/bin:/opt/android-sdk/platform-tools:$PATH"
export CHROME_EXECUTABLE="/usr/bin/brave"

# Colorls
alias ls=colorls

# YoutubeDL
alias ytdl=youtube-dl

# Bun
export PATH="$HOME/.bun/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Spicetify
export PATH=$PATH:$HOME/.spicetify
