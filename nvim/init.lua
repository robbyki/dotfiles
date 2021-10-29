-- local cmd = vim.cmd
-- local fn = vim.fn
-- local g = vim.g
-- local f = require("functions")
-- local map = f.map
-- local opt = vim.opt
-- local global_opt = vim.opt_global
-- 
require('plugins')
require('globals')
require('keymaps')
require('settings')

require('config.nvim-lsp').setup()
require('config.nvim-cmp').setup()
require('config.nvim-telescope')
require('config.colorizer')
require("config.nvim-reloader")
require('config.nvim-gitsigns')
require('config.nvim-autopairs')
require('config.nvim-comment')
require('config.nvim-floaterm')
require('config.nvim-matchup')
require('config.nvim-lspkind')
require('config.nvim-gitblame')
require('config.nvim-lightbulb')
require('config.nvim-indentline')
require('config.nvim-neoscroll')
require('config.nvim-lsp-trouble')
require('config.nvim-multi-cursor')
require('config.nvim-dashboard')
require('config.nvim-tree')
require('config.nvim-octo')
require('config.nvim-statusline').setup()
require('numb').setup()
require('better_escape').setup()
-- require('config.nvim-whichkey').setup()
--require('config.nvim-quickscope')
--require('config.nvim-numb')
--require('config.nvim-hop')

-- require('bufferline').setup()
require("nvim-treesitter.configs").setup({
  playground = { enable = true },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  },
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    --disable = { "scala" },
  },
})

require("trouble").setup({})

-- vim.g.onedark_style = 'deep'
require('onedark').setup()


-- require('config.nvim-lsp-ui').setup() wow. again. 
