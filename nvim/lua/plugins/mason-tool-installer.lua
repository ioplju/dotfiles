return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    lazy = false,
    opts = {
        ensure_installed = { "asm_lsp", "autotools_ls", "bashls", "clangd", "lua_ls", "mesonlsp", "pylsp", "tinymist", "vimls", "yamlls" },
        auto_update = true,
        run_on_start = true,
        start_delay = 0,
        debounce_hours = 10,
        integrations = {
            ['mason-lspconfig'] = true,
            -- ['mason-null-ls'] = true,
            -- ['mason-nvim-dap'] = true,
        }
    },
}
