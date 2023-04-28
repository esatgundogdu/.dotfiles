local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

vim.g.mapleader = " "

-- move lines on visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", default_opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", default_opts)

-- move cursor to middle after half page moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- set cursor at middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- replace selected text with clipboard without copying it to clipboard
vim.keymap.set("x", "<leader>p", "\"_dp")

-- replace inner word with clipboard without copying it
vim.keymap.set("n", "<leader>pp", "viw\"0p")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete without copying
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- tab keymaps (for insert mode, use Ctrl-t, Ctrl-d)
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { silent = true })
vim.keymap.set("v", "<Tab>", ">gv", { silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { silent = true })

-- terminal mode to normal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

