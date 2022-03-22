local autopairs = require("nvim-autopairs")
local cmp = require("cmp")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

autopairs.setup({
  disable_filetype = { "TelescopePrompt" },
  check_ts = true,
})

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

--
-- local ok, autopairs = pcall(require, "nvim-autopairs")
-- if not ok then
--     return
-- end
--
-- -- from LunarVim/Neovim_from_scratch
-- autopairs.setup({
--     check_ts = true,
--     ts_config = {
--         lua = { "string", "source" }, -- it will not add a pair on that treesitter node
--         javascript = { "string", "template_string" },
--         java = false, -- don't check treesitter on java
--     },
--     disable_filetype = { "telescopeprompt", "spectre_panel" },
--     fast_wrap = {
--         map = "<m-e>",
--         chars = { "{", "[", "(", '"', "'" },
--         pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
--         offset = 0, -- offset from pattern match
--         end_key = "$",
--         keys = "qwertyuiopzxcvbnmasdfghjkl",
--         check_comma = true,
--         highlight = "pmenusel",
--         highlight_grey = "linenr",
--     },
-- })
--
-- local Rule = require("nvim-autopairs.rule")
-- local cond = require("nvim-autopairs.conds")
-- local ts_conds = require("nvim-autopairs.ts-conds")
--
-- -- NOTE: clean EXAMPLE
-- autopairs.add_rule(Rule("$$", "$$", "tex"))
-- autopairs.add_rule(Rule("$$", "$$"):with_pair(cond.not_filetypes({ "lua" })))
--
-- -- press % => %% only while inside a comment or string (only block comment work)
-- autopairs.add_rules({
--     Rule("%", "%", "lua"):with_pair(ts_conds.is_ts_node({ "string", "comment" })),
--     Rule("$", "$", "lua"):with_pair(ts_conds.is_not_ts_node({ "function" })),
-- })
--
-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
-- local cmp_ok, cmp = pcall(require, "cmp")
-- if not cmp_ok then
--     return
-- end
-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
