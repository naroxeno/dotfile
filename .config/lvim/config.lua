lvim.plugins = {
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons'
    }
  },

  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup({})
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
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

if vim.g.neovide then
  vim.g.neovide_transparency = 0.85
  vim.g.neovide_hide_mouse_when_typing = true
else
  lvim.transparent_window = true
end

lvim.colorscheme = "tokyonight-night"
lvim.builtin.lualine.style = "default"
vim.wo.relativenumber = true
