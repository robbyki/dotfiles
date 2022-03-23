local function nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        vim.api.nvim_command("augroup " .. group_name)
        vim.api.nvim_command("autocmd!")
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
            vim.api.nvim_command(command)
        end
        vim.api.nvim_command("augroup END")
    end
end

local autocmds = {
    lua_highlight = {
        { "TextYankPost", "*", [[silent! lua vim.highlight.on_yank() {higroup="IncSearch", timeout=400}]] },
        -- { "BufWritePost", "plugins.lua", [[source <afile> | PackerSync]] },
    },
}

nvim_create_augroups(autocmds)

-- nvim_create_augroups({
--     packer = { { "BufWritePost", "plugins.lua", [[PackerCompile]] }, },
--     check_update = { { "FocusGained", "*", [[checktime]] }, },
--     yank = { { "TextYankPost", "*", [[silent! lua vim.highlight.on_yank({higroup='IncSearch', timeout=500})]] }, },
--     cursorline = { { "WinEnter,InsertLeave", "*", [[set cursorline]] }, { "WinLeave,InsertEnter", "*", [[set nocursorline]] }, },
--     quick_close = { { "Filetype", "help,startuptime,lspinfo,qf", [[nnoremap <buffer><silent> q :close<cr>]] }, }, -- cursorword = {
--     -- 	{ "Vimenter,ColorScheme", "*", [[lua require('modules.cursorword').highlight()]] },
--     -- 	{ "CursorMoved,CursorMovedI", "*", [[lua require('modules.cursorword').matchadd()]] },
--     -- 	{ "WinLeave", "*", [[lua require('modules.cursorword').matchdelete()]] },
--     -- },
--     whitespace = {
--         { "InsertEnter", "*", [[lua require('modules.whitespace').onInsertEnter()]] },
--         { "InsertLeave", "*", [[lua require('modules.whitespace').onInsertLeave()]] },
--         { "TextChangedI", "*", [[lua require('modules.whitespace').onTextChangedI()]] },
--         { "TextChanged", "*", [[lua require('modules.whitespace').onTextChanged()]] },
--         { "BufEnter", "*", [[lua require('modules.whitespace').onBufEnter()]] },
--         { "BufLeave", "*", [[lua require('modules.whitespace').onBufLeave()]] },
--     },
--     mkdir = { { "BufWritePre", "*", [[lua require('modules.mkdir').mkdir()]] }, },
--     telescope = {
--         {
--             "User",
--             "TelescopeFindPre",
--             [[
-- 				lua vim.o.laststatus=0; vim.cmd'autocmd BufWinLeave * ++once lua vim.o.laststatus=2'
-- 			]],
--         },
--     },
-- })

-- vim.cmd([[
--   augroup _general_settings
--     autocmd!
--     autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
--     autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
--     autocmd BufWinEnter * :set formatoptions-=cro
--     autocmd FileType qf set nobuflisted
--     autocmd FileType null-ls-info,alpha,startuptime nnoremap <silent> <buffer> q :q<cr>"
--   augroup end
--
--   augroup _git
--     autocmd!
--     autocmd FileType gitcommit setlocal wrap
--     autocmd FileType gitcommit setlocal spell
--   augroup end
--
--   augroup _run
--     autocmd!
-- 		autocmd TermOpen term://* nnoremap <silent> <buffer> q :bdelete!<cr>
--     autocmd FileType floaterm nnoremap <silent> <buffer> q :q<cr>" },
--
--   augroup end
--
--   augroup _markdown
--     autocmd!
--     autocmd FileType markdown setlocal wrap
--     autocmd FileType markdown nnoremap j gj
--   augroup end
--
--   augroup _auto_resize
--     autocmd!
--     autocmd VimResized * tabdo wincmd =
--   augroup end
--
--  augroup _alpha
--    autocmd!
--    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
--  augroup end
-- ]])
--
-- -- autocmd FileType markdown setlocal spell (markdown)
--
-- -- Use relative & absolute line numbers in 'n' & 'i' modes respectively
-- if builtin.custom.smartNumber.active then
--     vim.cmd([[ au InsertEnter * set norelativenumber ]])
--     vim.cmd([[ au InsertLeave * set relativenumber ]])
-- end
--
-- -- set header comment
-- vim.cmd([[
-- " Add header comment for python file automatically.
-- autocmd BufNewFile *.sh,*.py exec ":call SetTitle()"
-- func SetTitle()
-- if expand("%:e") == 'py'
--    call setline(1,'"""')
--    call setline(2,"# Author:         Leiyi548")
--    call setline(3,"# Date:           ".strftime("%Y/%m/%d %H:%M")."")
--    call setline(4,'"""')
--    normal G
--    normal o
--    normal o
-- endif
-- endfunc
-- ]])
--
-- -- indent for different filetype
-- vim.cmd([[
--   autocmd FileType php,ruby,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
--   autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
--   autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
--   autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
--   autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
--   autocmd FileType org setlocal nofoldenable
--   autocmd FileType TelescopePrompt set nonumber
--   autocmd FileType TelescopePrompt set norelativenumber
-- ]])
-- -- autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabst
--
-- if builtin.lsp.print_diagnostics_message.active then
--     function PrintDiagnostics(opts, bufnr, line_nr, client_id)
--         bufnr = bufnr or 0
--         line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
--         opts = opts or { ["lnum"] = line_nr }
--
--         local line_diagnostics = vim.diagnostic.get(bufnr, opts)
--         if vim.tbl_isempty(line_diagnostics) then
--             return
--         end
--
--         local diagnostic_message = ""
--         for i, diagnostic in ipairs(line_diagnostics) do
--             diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
--             print(diagnostic_message)
--             if i ~= #line_diagnostics then
--                 diagnostic_message = diagnostic_message .. "\n"
--             end
--         end
--         vim.api.nvim_echo({ { diagnostic_message, "Normal" } }, false, {})
--     end
--
--     vim.cmd([[ autocmd! CursorHold * lua PrintDiagnostics() ]])
-- end
--
-- if builtin.lsp.automatical_show_line_diagnostics.active then
--     vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
-- end
