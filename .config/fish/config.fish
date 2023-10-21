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
  alias cf='clear && fastfetch'
  alias sudo='sudo -i'
  alias wine='env LD_PRELOAD="" wine64'
end

function fish_greeting
  fastfetch
end

if status is-interactive
  set LD_PRELOAD /usr/lib/libmimalloc.so 
  set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
  set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
  my_alias
end

