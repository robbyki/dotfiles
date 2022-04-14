-- require("nvim-autopairs").setup({
--     disable_filetype = { "TelescopePrompt" },
-- })

local npairs = require("nvim-autopairs")
npairs.setup({
    disable_filetype = { "TelescopePrompt" },
    -- enable_afterquote = true, -- To use bracket pairs inside quotes
    enable_check_bracket_line = true, -- Check for closing brace so it will not add a close pair
    disable_in_macro = false,
    close_triple_quotes = true,
    check_ts = true,
    ts_config = {
        lua = { "string", "source" },
        javascript = { "string", "template_string" },
        java = false,
    },
})
npairs.add_rules(require("nvim-autopairs.rules.endwise-ruby"))
local endwise = require("nvim-autopairs.ts-rule").endwise
npairs.add_rules({
    endwise("then$", "end", "lua", nil),
    endwise("do$", "end", "lua", nil),
    endwise("function%(.*%)$", "end", "lua", nil),
    endwise(" do$", "end", "elixir", nil),
})
