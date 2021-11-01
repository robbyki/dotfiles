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
    a = {description = {'  Find File           '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files '}, command = 'Telescope oldfiles'},
	  c = {description = {'  Projects            '}, command = 'Telescope project'},
    d = {description = {'  Config              '}, command = ':cd ~/.config/nvim | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'},
    e = {description = {'  Git Projects        '}, command = ':cd ~/dev/git-projects | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'},
    f = {description = {'  Aide Template       '}, command = ':cd ~/dev/git-projects/aide-template | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'},
    g = {description = {'  New File            '}, command = ':DashboardNewFile'}
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}

-- vim.g.dashboard_session_directory = '~/.cache/nvim/session'
vim.g.dashboard_custom_footer = {'Neovim Lua'}
