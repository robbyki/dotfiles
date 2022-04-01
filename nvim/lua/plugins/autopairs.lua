local Rule = require("nvim-autopairs.rule")
local cond = require("nvim-autopairs.conds")
local endwise = require("nvim-autopairs.ts-rule").endwise
local ts_conds = require("nvim-autopairs.ts-conds")
local endwise_lua = require("nvim-autopairs.rules.endwise-lua")

-- Setup nvim-cmp.
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end

npairs.setup({
    map_cr = false,
    check_ts = true,
    ts_config = {
        lua = { "string", "source" },
        go = { "string" },
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

npairs.add_rules({
    Rule(" ", " "):with_pair(function(opts)
        local pair = opts.line:sub(opts.col - 1, opts.col)
        return vim.tbl_contains({ "()", "[]", "{}" }, pair)
    end),
})
npairs.add_rules({
    Rule("( ", " )")
        :with_pair(function()
            return false
        end)
        :with_move(function(opts)
            return opts.prev_char:match(".%)") ~= nil
        end)
        :use_key(")"),
})
npairs.add_rules({
    Rule("{ ", " }")
        :with_pair(function()
            return false
        end)
        :with_move(function(opts)
            return opts.prev_char:match(".%}") ~= nil
        end)
        :use_key("}"),
})
npairs.add_rules({
    Rule("[ ", " ]")
        :with_pair(function()
            return false
        end)
        :with_move(function(opts)
            return opts.prev_char:match(".%]") ~= nil
        end)
        :use_key("]"),
})
npairs.add_rules({
    Rule("%", "%", { "lua" }):with_pair(ts_conds.is_ts_node({ "string", "comment" })),
})
npairs.add_rules({
    Rule("$", "$", { "lua" }):with_pair(ts_conds.is_not_ts_node({ "function" })),
})
npairs.add_rules({
    Rule("=", "", { "cpp", "rust", "go", "lua" })
        :with_pair(cond.not_inside_quote())
        :with_pair(function(opts)
            local last_char = opts.line:sub(opts.col - 1, opts.col - 1)
            if last_char:match("[%w%=%s]") then
                return true
            end
            return false
        end)
        :replace_endpair(function(opts)
            local prev_2char = opts.line:sub(opts.col - 2, opts.col - 1)
            local next_char = opts.line:sub(opts.col, opts.col)
            next_char = next_char == " " and "" or " "
            if prev_2char:match("%w$") then
                return "<bs> =" .. next_char
            end
            if prev_2char:match("%=$") then
                return next_char
            end
            if prev_2char:match("=") then
                return "<bs><bs>=" .. next_char
            end
            return ""
        end)
        :set_end_pair_length(0)
        :with_move(cond.none())
        :with_del(cond.none()),
})

npairs.add_rules({
    endwise("then$", "end", "lua", "if_statement"),
})

npairs.add_rules(endwise_lua)
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
