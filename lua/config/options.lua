-- Custom options (ported from NvChad init.lua)

-- Always parse as unix
vim.opt.fileformats = "unix"

-- Blink instead of beep
vim.opt.visualbell = true

-- Disable spellcheck by default
vim.opt.spell = false

-- Replace tabs with two spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true

-- As you scroll through a file, ensure you can see two lines before/after the cursor
vim.opt.scrolloff = 2

-- Ignore case when searching unless a capital letter is provided
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Remove highlighting when searching
vim.opt.hlsearch = false

-- Line length details
vim.opt.textwidth = 150
vim.opt.colorcolumn = "151"

-- Don't word wrap when typing text, but wrap otherwise
vim.opt.formatoptions:remove("t")
vim.opt.wrap = true

-- Share the macOS clipboard
vim.opt.clipboard = "unnamed"
