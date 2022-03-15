local conf = {}

local function prequire(...)
    local status, lib = pcall(require, ...)
    if status then
        return lib
    end
    return nil
end

local cmp = prequire("cmp")
-- local lspkind = prequire("lspkind")

local replace_termcodes = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(replace_termcodes(key), mode, true)
end

local function has_words_before()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local tab_mapping = {
    c = function(fallback)
        if cmp.visible() then
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
        else
            if vim.fn.getcmdtype() == "/" then
                cmp.complete()
            else
                fallback()
            end
        end
    end,
    i = function(fallback)
        if cmp.visible() then
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        elseif has_words_before() then
            vim.fn.feedkeys(replace_termcodes("<Tab>"), "n")
        else
            fallback()
        end
    end,
}

local shift_tab_mapping = {
    c = function(fallback)
        if cmp.visible() then
            cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
        else
            if vim.fn.getcmdtype() == "/" then
                cmp.complete()
            else
                fallback()
            end
        end
    end,
    i = function(fallback)
        if cmp.visible() then
            cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        elseif has_words_before() then
            vim.fn.feedkeys(replace_termcodes("<S-Tab>"), "n")
        else
            fallback()
        end
    end,
}

local function mappings()
    return {
        ["<C-n>"] = cmp.mapping(function(fallback)
            if vim.fn["vsnip#available"](1) == 1 then
                feedkey("<Plug>(vsnip-expand-or-jump)", "")
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<C-p>"] = cmp.mapping(function(fallback)
            if vim.fn["vsnip#jumpable"](-1) == 1 then
                feedkey("<Plug>(vsnip-jump-prev)", "")
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
        ["<C-e>"] = cmp.mapping(cmp.mapping.close(), { "i", "c" }),
        ["<C-l>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["<CR>"] = cmp.mapping({
            i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
        }),
        ["<Tab>"] = cmp.mapping(tab_mapping),
        ["<S-Tab>"] = cmp.mapping(shift_tab_mapping),
    }
end

local function snippet_func(args)
    vim.fn["vsnip#anonymous"](args.body)
end

local tabnine = require("cmp_tabnine.config")
local function tabnine_setup()
    tabnine:setup({
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = "..",
    })
end

local function setup_cmp_highlighting()
    vim.cmd([[
    " gray
    highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
    " blue
    highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
    highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
    " light blue
    highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
    highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
    highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
    " pink
    highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
    highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
    " front
    highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
  ]])
end

function conf.setup()
    cmp.setup({
        snippet = {
            expand = snippet_func,
        },
        preset = "codicons",
        documentation = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        },
        formatting = {
            format = require("lspkind").cmp_format({
                menu = {
                    nvim_lsp = "[LSP]",
                    buffer = "[BUF]",
                    cmp_tabnine = "[TN]",
                    path = "[PATH]",
                    tmux = "[TMUX]",
                    vsnip = "[SNIP]",
                    orgmode = "[ORG]",
                    -- fuzzy_path = "[FZ-PATH]",
                    -- fuzzy_buffer = "[FZ-BUFFER]",
                },
            }),
        },
        preselect = cmp.PreselectMode.None,
        mapping = mappings(),
        sources = cmp.config.sources({
            { name = "copilot" },
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "vsnip" },
            { name = "path" },
            {
                name = "tmux",
                option = {
                    all_panes = true,
                    trigger_characters = {},
                },
            },
            { name = "cmp_git" },
            { name = "calc" },
            { name = "nvim_lsp_signature_help" },
            { name = "cmp_tabnine" },
            -- { name = "rg" },
            {
                name = "buffer",
                option = {
                    get_bufnrs = function()
                        local bufs = {}
                        for _, win in ipairs(vim.api.nvim_list_wins()) do
                            bufs[vim.api.nvim_win_get_buf(win)] = true
                        end
                        return vim.tbl_keys(bufs)
                    end,
                },
            },
        }),
        experimental = {
            ghost_text = true,
        },
    })

    cmp.setup.cmdline("/", {
        sources = {
            { name = "buffer" },
        },
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources({
            { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
            { name = "buffer" },
        }),
    })

    setup_cmp_highlighting()
    tabnine_setup()
end

return conf
