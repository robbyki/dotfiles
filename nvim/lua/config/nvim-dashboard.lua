vim.g.dashboard_custom_header = {
    '',
    '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ',
    '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
    '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ',
    '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
    '          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
    '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
    '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
    ' ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
    ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ',
    '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
    '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  New File            '}, command = ':DashboardNewFile'},
    b = {description = {'  Find File           '}, command = 'Telescope find_files'},
    c = {description = {'  Recently Used Files '}, command = 'Telescope oldfiles'},
	  d = {description = {'  Projects            '}, command = 'Telescope project'},
    e = {description = {'  Config              '}, command = ':cd ~/.config/nvim | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'},
    f = {description = {'  Git Projects        '}, command = ':cd ~/dev/git-projects | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'},
    g = {description = {'  Aide Template       '}, command = ':cd ~/dev/git-projects/aide-template | :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍'}
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}

-- vim.g.dashboard_session_directory = '~/.cache/nvim/session'
vim.g.dashboard_custom_footer = {'Do not go gentle into that good night --Dylan Thomas' }
