-- Jon Zeolla's custom configs
-- Set whichkey leader
vim.g.which_key_leader = " "
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
-- Set the textwidth to 160 characters
vim.cmd('set textwidth=160')
-- But don't word wrap when typing text
vim.cmd('set formatoptions-=t')
-- Share the macOS clipboard
vim.cmd('set clipboard=unnamed')

-- Key mappings
-- Toggle spellcheck
vim.api.nvim_set_keymap('n', '<Leader>s', ':set spell!<CR>', { silent = true })
-- Reformat XML
vim.api.nvim_set_keymap('n', '<Leader>x', [[:%!xmllint --format %<CR>]], { silent = true })
-- Reformat JSON
vim.api.nvim_set_keymap('n', '<Leader>j', [[:%!jq . %<CR>]], { silent = true })
-- Vertically split and jump to the new side
vim.api.nvim_set_keymap('n', '<Leader>n', ':vsplit <CR><C-w><C-w>', { silent = true })

-- Configure ALE
vim.g.ale_completion_enabled = 1
vim.b.ale_linters = {
    ansible = {'ansible-lint'},
    cloudformation = {'cfn-python-lint'},
    dockerfile = {'dockerfile'},
    go = {'gopls'},
    python = {'pylint', 'mypy', 'unimport', 'bandit', 'refurb', 'pyre', 'ruff', 'pyright'},
}
vim.g.ale_fixers = {
    ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
    go = {'gofmt'},
    python = {'black', 'isort', 'ruff'},
    rust = {'rustfmt'},
    terraform = {'terraform'},
}
vim.g.ale_fix_on_save = 1
vim.g.ale_python_isort_options = '--profile black'
vim.g.ale_python_auto_pipenv = 1
vim.g.ale_python_pyre_auto_pipenv = 1
vim.g.ale_python_refurb_auto_pipenv = 1
vim.g.ale_python_ruff_auto_pipenv = 1
