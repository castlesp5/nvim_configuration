-- This File has only keymaps --



-- shortcuts --
vim.keymap.set('n', ';', ':') -- mapping ; to :
vim.keymap.set('n', '<C-s>', ':w<CR>') -- saves with <CTRL + S>

-- navigate your tabs -- 
vim.keymap.set('n', '<C-n>', ':tabnew<CR>') -- creates a new empty tab
vim.keymap.set('n', 'x', ':q<CR>') -- close a tab 
vim.keymap.set('n', '<C-Left>', ':tabp<CR>') -- switching tabs
vim.keymap.set('n', '<C-Right>', ':tabn<CR>') -- switching tabs
vim.keymap.set('n', '<C-h>', ':tabp<CR>') -- switching tabs
vim.keymap.set('n', '<C-l>', ':tabn<CR>') -- switching tabs
vim.keymap.set('n', '<Tab>', ':tabn<CR>') -- switching tabs
