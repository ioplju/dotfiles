return {
    "williamboman/mason-lspconfig.nvim",
    lazy = false, -- true, -- wait for lspconfig to load it
    dependencies = {
        {
            "williamboman/mason.nvim",
            lazy = false,
            opts = {}, -- implicitely call `setup()`
        }
    },
    opts = {
        ensure_installed = {},
        automatic_installation = true,
        handlers = nil,
    },
}
