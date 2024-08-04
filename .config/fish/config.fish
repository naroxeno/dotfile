if status is-interactive
    alias mkdir='mkdir -p'
    alias ls='lsd'
    alias df='duf'
    alias top='btm'
    alias du='dust'
    alias rs='rsync'
    alias c='clear'
    alias ci='clear && fish_greeting && cd'
    alias wine='env LD_PRELOAD="" wine64'
    # ':' Command
    alias :q='exit'
    alias :e='neovide'
    alias :s='source ~/.config/fish/config.fish'
    alias :cpkg='sudo pacman -Qtdq | sudo pacman -Rns -'
    # Dangerous Command 
    alias rm='rm -i'
    alias ds='doas'
    # Git
    alias gps='git push'
    alias gpl='git pull'
    alias gcm='git commit'
    alias ga='git add'
    # misc
    alias mf='musicfox'
    alias play='mpv --no-audio-display --volume=50'
    alias watchgpu='watch -n 0.3 nvidia-smi'
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    fastfetch
end

fish_add_path /opt/usrprogs/bin/ ~/.local/bin/

set -x LANG zh_CN.UTF-8
set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
