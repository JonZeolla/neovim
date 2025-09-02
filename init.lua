-- Global custom configs
-- Always parse as unix
vim.cmd('set ffs=unix')
-- Blink instead of beep
vim.cmd('set visualbell')
-- Disable spellcheck by default
vim.cmd('set nospell')
-- Replace tabs with two spaces
vim.cmd('set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab')
-- As you scroll through a file, ensure you can see two lines before/after the cursor
vim.cmd('set scrolloff=2')
-- Ignore case when searching unless a capital letter is provided
vim.cmd('set ignorecase smartcase')
-- Remove highlighting when searching
vim.cmd('set nohlsearch')
-- Line length details
vim.cmd('set textwidth=150')
vim.cmd('set colorcolumn=151')
-- Don't word wrap when typing text
vim.cmd('set formatoptions-=t')
-- Share the macOS clipboard
vim.cmd('set clipboard=unnamed')

-- Key mappings
-- Toggle spellcheck
vim.api.nvim_set_keymap('n', '<Leader>s', ':set spell!<CR>', { silent = true })
