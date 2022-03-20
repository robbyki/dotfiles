--todo: add this to override the default behavior
-- NormalNC⋅=⋅config.dimInactive⋅and⋅{⋅fg⋅=⋅colors.fg_dark,⋅bg⋅=⋅colors.bg_light0⋅}⋅or⋅{⋅link⋅=⋅"Normal"⋅},

local colors = require("kanagawa.colors").setup()

local overrides = {
    LspReferenceText = { bg = colors.roninYellow, fg = colors.sumiInk1 },
    LspReferenceRead = { bg = colors.roninYellow, fg = colors.sumiInk1 },
    LspReferenceWrite = { bg = colors.roninYellow, fg = colors.sumiInk1 },
    -- VertSplit = { fg = colors.bg_dark, bg = "NONE" },
}

require("kanagawa").setup({
    undercurl = true, -- enable undercurls
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true, -- special highlight for the return keyword
    specialException = true, -- special highlight for exception handling keywords
    -- transparent = true, -- do not set background color
    dimInactive = true, -- dim inactive regions
    colors = {},
    overrides = overrides,
    --    overrides = {
    --        CursorLine = { bg = "NONE" },
    --        TelescopeBorder = { bg = "NONE" }
    --    },
})
