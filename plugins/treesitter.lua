local plugin = {
  "nvim-treesitter/nvim-treesitter",
  opts = {
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
}

return plugin
