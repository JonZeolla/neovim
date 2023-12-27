# Jon Zeolla custom neovim configs

This is meant to be cloned into `~/.config/nvim/lua/custom/` to layer on top of [NvChad](https://nvchad.com/). Some notable details:

- `custom/init.lua` is for general settings and configs done in the buffer or global contexts.
- `custom/plugins/PLUGIN_NAME.lua` is setup specifics for a specific plugin.

## opts vs config

In `plugins/` if we specify an `opts` then it will run `require("PLUGIN_NAME_HERE").setup(opts)` without needing to explicitly configure it to do so.

`config` is useful when you're running `setup()` for a plugin manually. If you set both `config` and `opts`, the `opts` table becomes the second argument to the
`setup()` function.

## Other notes

To check what LSPs are setup/attached, use `:LspInfo`.

`cmp` plugins are completion-related, whereas `lsp` are the language servers.
