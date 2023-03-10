local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
--vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})	-- git files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})	-- project files
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})	-- project search
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

