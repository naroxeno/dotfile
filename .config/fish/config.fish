function my_alias
  alias mkdir='mkdir -p'
  alias ls='lsd'
  alias df='duf'
  alias top='btm'
  alias du='dust'
  alias :q='exit'
  alias c='clear'
  alias ci='clear && fish_greeting && cd'
  alias wine='env LD_PRELOAD="" wine64'
  # Dangerous Command 
  alias rm='rm -i'
  alias sudo='sudo -i'
  alias ds='doas'
  # Git
  alias gps='git push'
  alias gpl='git pull'
  alias gcm='git commit'
  alias ga='git add'
  # misc
  alias :cpkg='sudo pacman -Qtdq | sudo pacman -Rns -'
  alias mf='musicfox'
  alias play='mpv --no-audio-display --volume=50'
end

function fish_greeting
  fastfetch -l arch_small
end

if status is-interactive
  my_alias
  fish_add_path ~/.local/bin/
  starship init fish | source
end

function dfu
  yadm add -u && yadm commit -m $argv[1] && yadm push origin main
end

