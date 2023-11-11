function my_alias
  alias mkdir='mkdir -p'
  alias :q='exit'
  alias :e='neovide-lunarvim'
  alias lvi='~/.local/bin/lvim'
  alias osu='~/.local/bin/osu'
  alias c='clear'
  alias cf='clear && fish_greeting'
  alias cfd='clear && fish_greeting'
  alias wine='env LD_PRELOAD="" wine64'
  # Dangerous Command 
  alias rm='rm -i'
  alias sudo='sudo -i'
  # Git
  alias gps='git push'
  alias gpl='git pull'
  alias gcm='git commit'
  alias ga='git add .'
end

function dfu
  yadm add -u && yadm commit -m $argv[1] && yadm push origin main 
end

function fish_greeting
  fastfetch -l arch_small
end

if status is-interactive
  my_alias
end
