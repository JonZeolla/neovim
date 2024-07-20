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
      "gotmpl",
      "hcl",
      "helm",
      "html",
      "javascript",
      "jq",
      "json",
      "lua",
      "python",
      "requirements",
      "ruby",
      "rust",
      "terraform",
      "tmux",
      "typescript",
      "vim",
      "xml",
      "yaml"
    },
  }
}

return plugin
