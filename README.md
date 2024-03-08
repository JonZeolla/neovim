# Jon Zeolla custom neovim configs

This is meant to be cloned into `~/.config/nvim/lua/custom/` to layer on top of [NvChad](https://nvchad.com/). Some notable details:

- `custom/init.lua` is for general settings and configs done in the buffer or global contexts.
- `custom/plugins/PLUGIN_NAME.lua` is setup specifics for a specific plugin.

## Language servers

This is the most common use case; adding a language server or configuring one. To see language server info, run `:LspInfo`.

### Adding a language server

Make sure that your language server is being installed by [`mason.lua`](https://github.com/JonZeolla/neovim/blob/main/plugins/mason.lua), and that it's also
being configured/loaded by [`lspconfig.lua`](https://github.com/JonZeolla/neovim/blob/main/plugins/lspconfig.lua).

### Configuring a language server

If you need a custom configuration for the language server, go to [`lspconfig.lua`](https://github.com/JonZeolla/neovim/blob/main/plugins/lspconfig.lua), add
the language server to the `customized` local variable, and then create a corresponding `language_servers/<name>.lua` file with the configuration. See [that
folder](https://github.com/JonZeolla/neovim/blob/main/language_servers) for examples.

### A note about ALE

If you're having a hard time figuring out which language server is creating a diagnostic message, it's probably one of the ALE linters.

Run `:ALEInfo`, look into the enabled linters and tweak their configurations as needed.

## Plugins

To see information about installed plugins, run `:Mason`.

### Adding a Plugin

Add the new plugin to the [`mason.lua`](https://github.com/JonZeolla/neovim/blob/main/plugins/mason.lua) to ensure it gets properly installed and updated over
time.

### Configuring a Plugin

To configure a plugin, edit [`plugins.lua`](https://github.com/JonZeolla/neovim/blob/main/plugins.lua) to add a new `local`, and add it to the `plugins` local.
Then you can create a new file under [`plugins`](https://github.com/JonZeolla/neovim/tree/main/plugins) with a matching name and a configuration similar to:

```lua
local plugin = {
    "thething/here",
    dependencies = {"anyoptional/dependencies"},
    opts = {
        optional = { opts = "here" },
    }
    config = function()
      require("thething").setup({
          configuration = {
              enabled = true,
          }
          })
    end
}

return plugin
```

Keep in mind that `dependencies`, and `opts` are entirely optional (more on `opts` in the docs below) and just examples. `config` should probably exist, but a
minimal version would look more like:

```lua
config = function()
  require("thing").setup()
end
```

When configuring a plugin, check out the other [`plugins` here](https://github.com/JonZeolla/neovim/tree/main/plugins) and refer to the docs of the plugin
you're setting up.

## opts vs config

In `plugins/` if we specify an `opts` then it will run `require("PLUGIN_NAME_HERE").setup(opts)` without needing to explicitly configure it to do so.

`config` is useful when you're running `setup()` for a plugin manually. If you set both `config` and `opts`, the `opts` table becomes the second argument to the
`setup()` function.

## Other notes

To check what LSPs are setup/attached, use `:LspInfo`.

`cmp` plugins are completion-related, whereas `lsp` are the language servers.
