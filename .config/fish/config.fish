function fish_greeting
  fastfetch -l arch_small
end

if status is-interactive
  fish_add_path ~/.local/bin/
  source ~/.config/fish/utils.fish
  source ~/.config/fish/alias.fish
end
