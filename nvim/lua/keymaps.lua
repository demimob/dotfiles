-- Keybindings

local keyset = vim.keymap.set
local z = '<leader>'

vim.g.mapleader = 'z'

-- Using "z" as the fist key

keyset('n', 'zx', '<cmd>tabnew<cr>') -- Creates new buffer
keyset('n', 'zd', '<cmd>tabnext<cr>') -- Moves to next buffer:
keyset('n', 'za', '<cmd>tabprevious<cr>') -- Moves to previous buffer
keyset('n', 'zq', '<cmd>Telescope oldfiles<cr>')
keyset('n', 'zw', '<cmd>NvimTreeToggle<cr>')
keyset('n', 'zs', '<cmd>ScribeFind<cr>')
keyset('n', 'zc', '<cmd>ScribeOpen<cr>')
