vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

vim.keymap.set({ 'n', 'v' }, '<space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true}

vim.keymap.set('n', '<C-s>', ' <cmd> w <cr>')
vim.keymap.set('n', '<C-q>', ' <cmd> q <cr>')


vim.keymap.set('n', 'x', '"_x', opts)


-- Buffers
vim.keymap.set('n', '<TAB>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts)

-- Windows
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w >', opts)
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

-- Window Navigation
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Indent Mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '_dp', opts)



-- black python formatting
vim.keymap.set("n", "<leader>fmp", ":silent !black %<cr>")

--Run code
vim.keymap.set("n", "<leader>r", ":!python3 -u %<cr>")

-- split screen
vim.keymap.set("n", "<leader>h", "<cmd> split <cr>")
vim.keymap.set("n", "<leader>v", "<cmd> vsplit <cr>")


