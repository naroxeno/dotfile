function vic
  if test $argv[1] = "tmux"
    vi ~/.tmux.conf
  else if test $argv[1] = "vi"
    vi ~/.config/nvim/lua/custom/$argv[2]
  else if test $argv[1] = "c"
    ls ~/.config/$argv[2]
  else
    vi ~/.config/$argv[1]/$argv[2]
  end
end

function dfu
  yadm add -u && yadm commit -m $argv[1] && yadm push origin main
end
