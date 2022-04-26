vim.opt.laststatus = 3
vim.opt.fillchars:append({
    horiz = "━",
    horizup = "┻",
    horizdown = "┳",
    vert = "┃",
    vertleft = "┨",
    vertright = "┣",
    verthoriz = "╋",
})

local default_colors = require("kanagawa.colors").setup()

local overrided_hlgroup = {
    VertSplit = { fg = default_colors.sumiInk2, bg = "NONE" },
    StatusLineNC = { bg = "NONE" },
    -- NormalNC = config.dimInactive and { fg = default_colors.fg_dark, bg = default_colors.bg_light0 } or { link = "Normal" },
    LspReferenceText = { bg = default_colors.roninYellow, fg = default_colors.sumiInk1 },
    LspReferenceRead = { bg = default_colors.roninYellow, fg = default_colors.sumiInk1 },
    LspReferenceWrite = { bg = default_colors.roninYellow, fg = default_colors.sumiInk1 },
    CursorLine = { bg = default_colors.bg_visual },
    LineNr = { fg = default_colors.dep },
}

require("kanagawa").setup({
    transparent = true,
    dimInactive = true,
    overrides = overrided_hlgroup,
    globalStatus = true,
})

vim.cmd("colorscheme kanagawa")
