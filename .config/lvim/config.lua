local opt = vim.opt
lvim.plugins = {
  {
    'nvimdev/lspsaga.nvim',
    event = "InsertEnter",
    config = function()
      require('lspsaga').setup({})
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons'
    }
  },
}

lvim.lazy.opts.git = {
  log = { "-8" },
  timeout = 150,
  url_format = "git@github.com:%s.git",
  filter = true,
}

if vim.g.neovide then
  vim.g.neovide_transparency = 0.85
  vim.g.neovide_hide_mouse_when_typing = true
  vim.o.guifont = "Source Code Pro:h12"
elseif os.getenv("SSH_CLIENT") then
  lvim.transparent_window = false
else
  lvim.transparent_window = true
end

lvim.colorscheme = "tokyonight-night"
lvim.builtin.lualine.style = "default"
opt.relativenumber = true
