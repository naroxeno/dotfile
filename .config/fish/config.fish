function my_alias
  alias mkdir='mkdir -p'
  alias ls='lsd'
  alias :q='exit'
  alias c='clear'
  alias ci='clear && fish_greeting && cd'
  alias wine='env LD_PRELOAD="" wine64'
  # Dangerous Command 
  alias rm='rm -i'
  alias sudo='sudo -i'
  # Git
  alias gps='git push'
  alias gpl='git pull'
  alias gcm='git commit'
  alias ga='git add'
  # Paru/Pacman
  alias :i='paru -S'
  alias :u='paru'
  alias :r='paru -R'
  alias :rc='paru -Rscun'
  alias :cpkg='sudo pacman -Qtdq | sudo pacman -Rns -'
  # misc
  alias mf='musicfox'
  alias play='mpv ./Music/CloudMusic/Arghena-Laur,Feryquitous.mp3 --no-audio-display --volume=52'
end

function dfu
  yadm add -u && yadm commit -m $argv[1] && yadm push origin main
end

function fish_greeting
  fastfetch -l arch_small
end

if status is-interactive
  my_alias
  set -U fish_user_paths $fish_user_paths ~/.local/bin/
  set -U LANG zh_CN.UTF-8
end
