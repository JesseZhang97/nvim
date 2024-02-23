local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = ';'

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Do not yank with x
keymap('n', 'x', '"_x', opts)

-- Keep in center
keymap('n', '<c-d>', '<c-d>zz', opts)
keymap('n', '<c-u>', '<c-u>zz', opts)
-- Fix * (Keep the cursor position, don't move to next match)
keymap('n', '*', '*N', opts)

-- Fix n and N. Keeping cursor in center
keymap('n', 'n', 'nzz', opts)
keymap('n', 'N', 'Nzz', opts)

-- Keep yanked text without losing it after paste
keymap('x', '<leader>p', '"_dp', opts)

-- Cancel highlight
keymap('n', '<space>nh', '<CMD>nohl<CR>', opts)

-- Quickly save the current buffer or all buffers
keymap('n', '<leader>w', '<CMD>update<CR>', opts)
keymap('n', '<leader>W', '<CMD>wall<CR>', opts)

-- Close buffer
keymap('n', ';c', '<CMD>bd<CR>', opts)

-- Quit neovim
keymap('n', '<C-Q>', '<CMD>q<CR>', opts)

-- leader-o/O inserts blank line below/above
-- keymap('n', '<leader>o', 'o<ESC>', opts)
-- keymap('n', '<leader>O', 'O<ESC>', opts)

------------------------------------------------

-- Split window
--keymap('n', '<leader>ss', ':split<Return><C-w>w', opts)
--keymap('n', '<leader>sv', ':vsplit<Return><C-w>w', opts)

-- Better splits navigation
keymap('n', ';j', '<C-w>j', opts)
keymap('n', ';k', '<C-w>k', opts)
keymap('n', ';h', '<C-w>h', opts)
keymap('n', ';l', '<C-w>l', opts)

-- Resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)
keymap('n', ';K', ':resize -2<CR>', opts)
keymap('n', ';J', ':resize +2<CR>', opts)
keymap('n', ';H', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Copying the vscode behaviour of making tab splits
-- keymap('n', '<C-\\>', '<CMD>vsplit<CR>', opts)
-- keymap('n', '<A-\\>', '<CMD>split<CR>', opts)
keymap('n', ';sv', '<CMD>vsplit<CR>', opts)
keymap('n', ';ss', '<CMD>split<CR>', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)
-- keymap('n', '<leader>[', '<CMD>bp<CR>', opts)
-- keymap('n', '<leader>]', '<CMD>bn<CR>', opts)

-- Move to last buffer
keymap('n', "''", '<CMD>b#<CR>', opts)

-- Insert --
-- Press jk fast to enter
keymap('i', 'jk', '<ESC>', opts)

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move text up and down
keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', 'p', '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
-- keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
keymap('o', 'A', ':<C-U>normal! mzggVG<CR>`z', opts)
keymap('x', 'A', ':<C-U>normal! ggVG<CR>', opts)

keymap('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- camelcase motion
-- vim.keymap.set({ 'n', 'o', 'x' }, 'w', "<cmd>lua require('spider').motion('w')<CR>", { desc = 'Spider-w' })
--vim.keymap.set({ 'n', 'o', 'x' }, 'e', "<cmd>lua require('spider').motion('e')<CR>", { desc = 'Spider-e' })
--vim.keymap.set({ 'n', 'o', 'x' }, 'b', "<cmd>lua require('spider').motion('b')<CR>", { desc = 'Spider-b' })
--vim.keymap.set({ 'n', 'o', 'x' }, 'ge', "<cmd>lua require('spider').motion('ge')<CR>", { desc = 'Spider-ge' })
