function my_alias
  alias mkdir='mkdir -p'
  alias ls='lsd'
  alias :q='exit'
  alias :e='neovide-lunarvim'
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
  # misc
  alias cleanpkg='sudo pacman -Qtdq | sudo pacman -Rns -'
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
end
