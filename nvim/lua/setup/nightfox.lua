--vim.cmd("colorscheme nightfox")

local nightfox = require("nightfox")
nightfox.setup({
    hlgroups = {
        LineNr = { fg = "#526175", bg = "#111B24" },
        CursorLineNr = { fg = "#9D79D6", bg = "#111B24" },
        SignColumn = { bg = "#111B24" },
        GitSignsAdd = { bg = "#111B24" },
        GitSignsChange = { bg = "#111B24" },
        GitSignsDelete = { bg = "#111B24" },
        IndentBlanklineChar = { fg = "#393B44" },
        DiagnosticSignError = { fg = "#C94F6D", bg = "#111B24" },
        DiagnosticSignWarn = { fg = "#DBC074", bg = "#111B24" },
        DiagnosticSignHint = { fg = "#63CDCF", bg = "#111B24" },
        DiagnosticSignInfo = { fg = "#719CD6", bg = "#111B24" },
    },
    fox = "nightfox",
    alt_nc = true,
    styles = {
        comments = "italic",
        keywords = "bold",
        functions = "italic,bold",
    },
    inverse = {
        visual = true,
        search = true,
        match_paren = true,
    },
})
nightfox.load()

-- Good info on overriding colors: https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
-- Note had to add the SpecialKey to keep highlight on yank working alongside the CursorLine override
-- the below QuickScope highlights don't seem to be working.
vim.api.nvim_exec(
    [[
function! MyHighlights() abort
    highlight CursorLine guifg=NONE guibg=#353A54
    highlight CmpItemAbbr guifg=#9FA4B6
    highlight SpecialKey guibg=NONE
    highlight CmpItemKind guifg=#8289A0
    highlight CmpItemMenu guifg=#8289A0
    highlight PmenuSel guibg=#73daca guifg=#111111
    highlight Pmenu guibg=#2E3248
    highlight GitSignsAddNr guifg=#26A07A
    highlight GitSignsDeleteNr guifg=#E87D7D
    highlight GitSignsChangeNr guifg=#AD991F
    highlight QuickScopePrimary guifg='#61afef' gui=underline,bold
    highlight QuickScopeSecondary guifg='#e86671' gui=underline,bold
    endfunction
augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END]],
    true
)
