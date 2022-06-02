vim.opt.fillchars:append({
  horiz = "━",
  horizup = "┻",
  horizdown = "┳",
  vert = "┃",
  vertleft = "┨",
  vertright = "┣",
  verthoriz = "╋",
})

local palette_colors = {
  teledark = "#191922",
  teleblack = "#25252E",
}

local default_colors = require("kanagawa.colors").setup()

local overrided_hlgroup = {
  VertSplit = { fg = default_colors.sumiInk2, bg = "NONE" },
  StatusLineNC = { bg = "NONE" },
  -- NormalNC = config.dimInactive and { fg = default_colors.fg_dark, bg = default_colors.bg_light0 } or { link = "Normal" },
  LspReferenceText = { bg = default_colors.roninYellow, fg = default_colors.sumiInk1 },
  LspReferenceRead = { bg = default_colors.roninYellow, fg = default_colors.sumiInk1 },
  LspReferenceWrite = { bg = default_colors.roninYellow, fg = default_colors.sumiInk1 },
  -- CursorLine = { bg = default_colors.bg_visual },
  CursorLine = { bg = palette_colors.teledark },
  LineNr = { fg = default_colors.dep },
}

require("kanagawa").setup({
  undercurl = true,
  commentStyle = "italic",
  functionStyle = "NONE",
  statementStyle = "bold",
  typeStyle = "bold",
  variablebuiltinStyle = "italic",
  specialReturn = true,
  specialException = true,
  transparent = true,
  dimInactive = true,
  overrides = overrided_hlgroup,
  globalStatus = true,
})

vim.cmd("colorscheme kanagawa")
