-- Formatters (replaces ALE)

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["*"] = { "trim_whitespace", "trim_newlines" },
        go = { "gofmt" },
        python = { "ruff_organize_imports", "ruff_format" },
        rust = { "rustfmt" },
        terraform = { "terraform_fmt" },
      },
    },
  },
}
