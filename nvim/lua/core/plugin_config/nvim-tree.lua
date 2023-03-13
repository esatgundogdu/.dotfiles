vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    renderer = {
        icons = {
            show = {
                modified = true,
            }
        }
    },
    modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = false,
    },
})

vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>', {silent = true})
