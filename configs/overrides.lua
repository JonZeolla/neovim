local M = {}

M.mason = {
  ensure_installed = {
    "black",
    "debugpy",
    "mypy",
    "pyright",
    "ruff",
  }
}

M.nvim_treesitter = {
  ensure_installed = {
    "bash",
    "css",
    "dockerfile",
    "git_config",
    "git_rebase",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "hcl",
    "html",
    "javascript",
    "jq",
    "json",
    "lua",
    "python",
    "ruby",
    "rust",
    "typescript",
    "vim",
    "xml"
  },
}

M.copilot = {
  suggestion = { enabled = true },
  panel = { enabled = true },
  filetypes = {
    markdown = true,
    help = true,
  },
}

return M
