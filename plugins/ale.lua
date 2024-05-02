local plugin = {
  "dense-analysis/ale",
  lazy = false,
  config = function()
    local g = vim.g

    g.ale_completion_enabled = 1
    g.ale_fixers = {
      ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
      go = {'gofmt'},
      python = {'black', 'isort', 'ruff'},
      rust = {'rustfmt'},
      terraform = {'terraform'},
    }
    g.ale_fix_on_save = 1
    g.ale_python_isort_options = '--profile black'
  end
}

return plugin
