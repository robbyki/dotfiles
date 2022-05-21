-- vim.g.nvim_tree_icons = {
--   default = "",
--   symlink = "",
--   git = {
--     unstaged = "",
--     staged = "S",
--     unmerged = "",
--     renamed = "➜",
--     deleted = "",
--     untracked = "U",
--     ignored = "◌",
--   },
--   folder = {
--     default = "",
--     open = "",
--     empty = "",
--     empty_open = "",
--     symlink = "",
--   },
-- }
--
require("nvim-tree").setup({
  hijack_netrw = true,
  diagnostics = {
    enable = true,
  },
  filters = {
    dotfiles = true,
    custom = {},
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
})
