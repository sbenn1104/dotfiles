vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set conceallevel=2")
vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"
-- black python formatting
vim.keymap.set("n", "<leader>fmp", ":silent !black %<cr>")

vim.keymap.set( {"n","t"}, "<C-q>", ":q<cr>")
vim.keymap.set("n", "<leader>wq", ":wq<cr>")

vim.keymap.set("n", "<leader>ac", ":AmazonQChat<cr>")
vim.keymap.set("n", "<leader>o", ":AmazonQAuth<cr>")


function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
