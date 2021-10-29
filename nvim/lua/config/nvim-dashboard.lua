vim.g.dashboard_custom_header = {
	' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
	' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
	' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
	' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
	' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
	' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    f = {description = {'  Find File           '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files '}, command = 'Telescope oldfiles'},
	  p = {description = {'  Projects            '}, command = 'Telescope project'},
    e = {description = {'  Config              '}, command = ':cd ~/.config/nvim | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'},
    w = {description = {'  Git Projects        '}, command = ':cd ~/dev/git-projects | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'},
    a = {description = {'  New File            '}, command = ':DashboardNewFile'}
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}

-- vim.g.dashboard_session_directory = '~/.cache/nvim/session'
vim.g.dashboard_custom_footer = {'Neovim Lua'}
