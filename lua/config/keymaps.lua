-- This File has only keymaps --
vim.g.mapleader = ' '


-- shortcuts --
vim.keymap.set('n', ';', ':') -- mapping ; to :
vim.keymap.set('n', '<C-s>', ':w<CR>') -- saves with <CTRL + S>
vim.keymap.set('n', '<leader>/', 'gcc', {remap=true}) -- comments the whole line
vim.keymap.set('v', '<leader>/', 'gcc', {remap=true}) -- comments the whole line

-- navigate your tabs -- 
vim.keymap.set('n', '<C-n>', ':tabnew<CR>') -- creates a new empty tab
vim.keymap.set('n', '<leader>x', ':q<CR>') -- close a tab 
vim.keymap.set('n', '<C-Left>', ':tabp<CR>') -- switching tabs
vim.keymap.set('n', '<C-Right>', ':tabn<CR>') -- switching tabs
vim.keymap.set('n', '<Tab>', ':tabn<CR>') -- switching tabs
vim.keymap.set('n', '<S-Tab>', ':tabp<CR>') -- switching tabs


-- terminal toggle --
vim.keymap.set('n', '<leader>c', ':split | term<CR>') -- split horizontal and opens a terminal
vim.keymap.set('n', '<leader>v', ':vsplit | term<CR>') -- splits vertical and opens a terminal
vim.keymap.set('t', '<C-\\>', '<C-\\><C-n>') -- switch from terminal mode to normal mode


-- navigate splitted screen --
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k')
