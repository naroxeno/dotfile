function my_alias
  alias mkdir='mkdir -p'
  alias yz='yazi'
  alias cat='bat'
  alias :q='exit'
  alias :e='neovide-lunarvim'
  alias :cat='/bin/cat'
  alias lvi='~/.local/bin/lvim'
  alias osu-update='~/.local/bin/osu update'
  alias th='trash'
  alias c='clear'
  alias cf='clear && fish_greeting'
  alias cfd='clear && fish_greeting'
  alias sudo='sudo -i'
  alias wine='env LD_PRELOAD="" wine64'
end

function fish_greeting
  fastfetch -l arch_small
end

if status is-interactive
  my_alias
end
