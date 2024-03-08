return {
    settings = {
        Lua = {
            runtime = {
                -- Align the runtime version of lua_ls with the version neovim uses
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Don't flag when we use vim as a global when it isn't defined
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
}
