-- Setup nvim-cmp.
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = { "string", "source" },
        javascript = { "string", "template_string" },
        java = false,
        rust = { "single_quote" },
    },
    disable_filetype = { "TelescopePrompt", "spectre_panel" },
    fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0, -- Offset from pattern match
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
    },
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))

-- local autopairs = require("nvim-autopairs")
-- local cmp = require("cmp")
-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
-- autopairs.setup({
--     disable_filetype = { "TelescopePrompt" },
--     check_ts = true,
-- })
-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

-- require("nvim-autopairs").setup({
--     check_ts = true,
-- })
-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
-- local cmp = require("cmp")
-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
-- cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = "racket"
