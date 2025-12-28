-- Custom keymaps (ported from NvChad init.lua + mappings.lua)

local map = vim.keymap.set

-- Toggle spellcheck (from init.lua)
map("n", "<Leader>s", ":set spell!<CR>", { silent = true, desc = "Toggle spellcheck" })

-- Git status (from mappings.lua)
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git status" })

-- Diagnostics (from mappings.lua)
map("n", "<leader>dj", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>dk", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", { desc = "Diagnostics list" })

-- DAP (from mappings.lua) - supplements LazyVim DAP extra
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "DAP Python test method" })

-- Venv selector (from venv-selector.lua)
map("n", "<leader>pyv", "<cmd>VenvSelect<cr>", { desc = "Select Python venv" })
