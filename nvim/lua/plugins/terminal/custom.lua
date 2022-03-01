local Terminal = require("toggleterm.terminal").Terminal

local M = {}

local lazygit = Terminal:new({
  cmd = "lazygit",
  hidden = true,
  direction = "float",
  close_on_exit = true,
  dir = "git_dir",
  float_opts = {
    border = "curved",
    width = 200,
    height = 100,
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

M.lazygit_toggle = function()
  lazygit:toggle()
end

local lf = Terminal:new({
  cmd = "lf",
  hidden = true,
  direction = "float",
  close_on_exit = true,
  highlights = {
    border = "Normal",
    background = "Normal",
  },
})

M.lf_toggle = function()
  lf:toggle()
end

return M
