# Jon Zeolla custom neovim configs

This is a complete [LazyVim](https://www.lazyvim.org/) configuration meant to be cloned directly to `~/.config/nvim/`.

## Installation

```bash
# Backup existing config if any
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone https://github.com/jonzeolla/neovim.git ~/.config/nvim

# Remove git history (optional, for personal use)
rm -rf ~/.config/nvim/.git

# Open neovim to install plugins
nvim
```

## Structure

```
~/.config/nvim/
├── init.lua                    # LazyVim bootstrap
├── lua/
│   ├── config/
│   │   ├── autocmds.lua        # Custom autocommands
│   │   ├── keymaps.lua         # Custom keymaps
│   │   ├── lazy.lua            # lazy.nvim + LazyVim extras setup
│   │   └── options.lua         # Custom vim options
│   └── plugins/
│       ├── conform.lua         # Formatters (format on save)
│       ├── copilot-chat.lua    # CopilotChat custom prompts + keybindings
│       ├── dap-python.lua      # DAP Python setup
│       ├── lsp.lua             # LSP servers + mason
│       ├── nvim-cmp.lua        # Completion customization
│       ├── treesitter.lua      # Treesitter languages
│       └── venv-selector.lua   # Python venv selector
└── stylua.toml
```

## LazyVim Extras Enabled

- `lazyvim.plugins.extras.coding.copilot` - GitHub Copilot integration
- `lazyvim.plugins.extras.dap.core` - Debug Adapter Protocol
- `lazyvim.plugins.extras.dap.nlua` - Lua debugging

## Custom Keybindings

| Mapping | Action |
|---------|--------|
| `<Leader>s` | Toggle spellcheck |
| `<leader>gs` | Telescope git status |
| `<leader>dj` | Next diagnostic |
| `<leader>dk` | Previous diagnostic |
| `<leader>dl` | Telescope diagnostics list |
| `<leader>db` | DAP toggle breakpoint |
| `<leader>dpr` | DAP Python test method |
| `<leader>pyv` | Select Python venv |
| `<leader>cd` | CopilotChat Docs |
| `<leader>ce` | CopilotChat Explain |
| `<leader>cf` | CopilotChat Fix |
| `<leader>cg` | CopilotChat CommitStaged |
| `<leader>co` | CopilotChat Optimize |
| `<leader>cr` | CopilotChat Review |
| `<leader>ct` | CopilotChat Tests |

## Language Servers

To see language server info, run `:LspInfo`.

To see information about installed LSPs (and DAP servers, linters, and formatters), run `:Mason`.

### Included LSPs

- ansible-language-server, awk-language-server, bash-language-server
- bicep-lsp, css-lsp, cypher-language-server
- docker-compose-language-service, dockerfile-language-server
- gopls, helm-ls, html-lsp, java-language-server
- json-lsp, lua-language-server, powershell-editor-services
- pyright, ruff, terraform-ls, typos-lsp, yaml-language-server

## Plugins

To see information about installed plugins, run `:Lazy`.

## Updating

```bash
# Update plugins
nvim --headless "+Lazy update" +qa

# Update Mason packages
nvim --headless "+MasonUpdate" +qa
```

## Other Notes

- To check what LSPs are attached to the current buffer: `:LspInfo`
- Theme: tokyonight (LazyVim default)
- Formatters run on save via conform.nvim
