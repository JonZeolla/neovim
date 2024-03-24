local plugin = {
  "dense-analysis/ale",
  lazy = false,
  config = function()
    local b = vim.b
    local g = vim.g

    b.ale_linters = {
      ansible = {'ansible-lint'},
      cloudformation = {'cfn-python-lint'},
      dockerfile = {'dockerfile'},
      go = {'gopls'},
      python = {'pylint', 'mypy', 'unimport', 'bandit', 'refurb', 'pyre', 'ruff', 'pyright'},
    }

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
    g.ale_python_auto_pipenv = 1
    g.ale_python_pyre_auto_pipenv = 1
    g.ale_python_refurb_auto_pipenv = 1
    g.ale_python_ruff_auto_pipenv = 1
  end
}

return plugin
