-- Custom autocmds

-- Fallback commentstring when filetype is undetected
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if vim.bo.commentstring == "" then
      vim.bo.commentstring = "#%s"
    end
  end,
})
