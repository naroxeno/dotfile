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

  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("hlchunk").setup({
        indent = {
          chars = { "│", "¦", "┆", "┊", },
        },
        blank = { enable = false, }
      })
    end
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
elseif os.getenv("SSH_CLIENT") then -- ssh client config
  lvim.transparent_window = false
else
  lvim.transparent_window = true
end

lvim.colorscheme = "tokyonight-night"
lvim.builtin.lualine.style = "default"
vim.wo.relativenumber = true
