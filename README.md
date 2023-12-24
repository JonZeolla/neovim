# Jon Zeolla custom neovim configs

These layer on top of [NvChad](https://nvchad.com/). Some notable details:

- `init.lua` is for general settings and configs done in the buffer or global contexts.
- `configs/overrides.lua` are where opts are defined for plugins to keep `plugins.lua` tidy.
- `configs/PLUGIN.lua` is for setting up a specific plugin.

To check what LSPs are setup/attached, use `:LspInfo`.
